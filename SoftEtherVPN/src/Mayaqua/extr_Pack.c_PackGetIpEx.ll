; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackGetIpEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackGetIpEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s@ipv6_bool\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s@ipv6_array\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s@ipv6_scope_id\00", align 1
@VALUE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PackGetIpEx(i32* %0, i8* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x %struct.TYPE_9__], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %83

29:                                               ; preds = %25
  %30 = trunc i64 %17 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @Format(i8* %19, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @PackGetBoolEx(i32* %33, i8* %19, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = getelementptr inbounds [16 x %struct.TYPE_9__], [16 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %39 = call i32 @Zero(%struct.TYPE_9__* %38, i32 64)
  %40 = trunc i64 %17 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @Format(i8* %19, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds [16 x %struct.TYPE_9__], [16 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @PackGetDataEx2(i32* %43, i8* %19, %struct.TYPE_9__* %44, i32 64, i32 %45)
  %47 = trunc i64 %17 to i32
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @Format(i8* %19, i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @PackGetIntEx(i32* %50, i8* %19, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds [16 x %struct.TYPE_9__], [16 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %55 = call i32 @SetIP6(%struct.TYPE_9__* %53, %struct.TYPE_9__* %54)
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %82

59:                                               ; preds = %29
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @VALUE_INT, align 4
  %63 = call i32* @GetElement(i32* %60, i8* %61, i32 %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = call i32 @Zero(%struct.TYPE_9__* %66, i32 4)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %83

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @PackGetIntEx(i32* %69, i8* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = call i64 (...) @IsBigEndian()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @Swap32(i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @UINTToIP(%struct.TYPE_9__* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %37
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %82, %65, %28
  %84 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #2

declare dso_local i64 @PackGetBoolEx(i32*, i8*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @PackGetDataEx2(i32*, i8*, %struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @PackGetIntEx(i32*, i8*, i32) #2

declare dso_local i32 @SetIP6(%struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32* @GetElement(i32*, i8*, i32) #2

declare dso_local i64 @IsBigEndian(...) #2

declare dso_local i32 @Swap32(i32) #2

declare dso_local i32 @UINTToIP(%struct.TYPE_9__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
