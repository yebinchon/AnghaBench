; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_wadread.c_openwad.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_wadread.c_openwad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not open wadfile\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IWAD\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"wadfile has weirdo header\00", align 1
@numlumps = common dso_local global i32 0, align 4
@lumpinfo = common dso_local global %struct.TYPE_7__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @openwad(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @derror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @read(i32 %18, %struct.TYPE_6__* %8, i32 24)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strncmp(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @derror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @LONG(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* @numlumps, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @LONG(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @numlumps, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @numlumps, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 24
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** @lumpinfo, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lumpinfo, align 8
  %47 = bitcast %struct.TYPE_7__* %46 to i8*
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = bitcast i8* %54 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %9, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i32 @lseek(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @read(i32 %60, %struct.TYPE_6__* %61, i32 %62)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %112, %26
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @numlumps, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lumpinfo, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @strncpy(i32 %74, i32 %80, i32 8)
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lumpinfo, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @LONG(i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lumpinfo, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i8* %94, i8** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @LONG(i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lumpinfo, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i8* %106, i8** %111, align 8
  br label %112

112:                                              ; preds = %68
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %64

115:                                              ; preds = %64
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @derror(i8*) #1

declare dso_local i32 @read(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @LONG(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
