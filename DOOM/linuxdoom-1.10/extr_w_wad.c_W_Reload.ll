; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_Reload.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_Reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }

@reloadname = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"W_Reload: couldn't open %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@lumpinfo = common dso_local global %struct.TYPE_8__* null, align 8
@reloadlump = common dso_local global i64 0, align 8
@lumpcache = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @W_Reload() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = load i32, i32* @reloadname, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %97

11:                                               ; preds = %0
  %12 = load i32, i32* @reloadname, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_BINARY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @reloadname, align 4
  %20 = call i32 @I_Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @read(i32 %22, %struct.TYPE_7__* %1, i32 32)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @LONG(i8* %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %2, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @LONG(i8* %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 32
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_7__* @alloca(i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i32 @lseek(i32 %38, i8* %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @read(i32 %43, %struct.TYPE_7__* %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lumpinfo, align 8
  %48 = load i64, i64* @reloadlump, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %3, align 8
  %50 = load i64, i64* @reloadlump, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %87, %21
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @reloadlump, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %52
  %61 = load i64*, i64** @lumpcache, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i64*, i64** @lumpcache, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @Z_Free(i64 %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @LONG(i8* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @LONG(i8* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 1
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %3, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 1
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %7, align 8
  br label %52

94:                                               ; preds = %52
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %10
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @I_Error(i8*, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @LONG(i8*) #1

declare dso_local %struct.TYPE_7__* @alloca(i32) #1

declare dso_local i32 @lseek(i32, i8*, i32) #1

declare dso_local i32 @Z_Free(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
