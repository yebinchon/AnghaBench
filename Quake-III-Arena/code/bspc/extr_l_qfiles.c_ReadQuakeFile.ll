; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_ReadQuakeFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_ReadQuakeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadQuakeFile(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [1024 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @unzOpen(i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = call i32 @unzOpenCurrentFile(%struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %42, %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %39, 1024
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1024, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @unzReadCurrentFile(%struct.TYPE_9__* %44, i8* %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @unzReadCurrentFile(%struct.TYPE_9__* %53, i8* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = call i32 @unzCloseCurrentFile(%struct.TYPE_9__* %58)
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @unzClose(i64 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %5, align 4
  br label %95

63:                                               ; preds = %4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @SafeOpenRead(i32 %66)
  store i32* %67, i32** %10, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @fseek(i32* %73, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %63
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @SEEK_CUR, align 4
  %86 = call i32 @fseek(i32* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32*, i32** %10, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @SafeRead(i32* %88, i8* %89, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @fclose(i32* %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %51
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @unzOpen(i32) #1

declare dso_local i32 @unzOpenCurrentFile(%struct.TYPE_9__*) #1

declare dso_local i32 @unzReadCurrentFile(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @unzCloseCurrentFile(%struct.TYPE_9__*) #1

declare dso_local i32 @unzClose(i64) #1

declare dso_local i32* @SafeOpenRead(i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @SafeRead(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
