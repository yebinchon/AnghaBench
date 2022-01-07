; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_mbedtls_debug_print_crt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_mbedtls_debug_print_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32 }

@DEBUG_BUF_SIZE = common dso_local global i32 0, align 4
@debug_threshold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s #%d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"crt->\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_crt(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1024 x i8], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %12, align 8
  %18 = load i32, i32* @DEBUG_BUF_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %6
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @debug_threshold, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33, %26, %6
  store i32 1, i32* %16, align 4
  br label %76

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %45, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = trunc i64 %19 to i32
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = call i32 @mbedtls_snprintf(i8* %21, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @debug_send_line(%struct.TYPE_12__* %51, i32 %52, i8* %53, i32 %54, i8* %21)
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = call i32 @mbedtls_x509_crt_info(i8* %56, i32 1023, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %64 = call i32 @debug_print_line_by_line(%struct.TYPE_12__* %59, i32 %60, i8* %61, i32 %62, i8* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = call i32 @debug_print_pk(%struct.TYPE_12__* %65, i32 %66, i8* %67, i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %12, align 8
  br label %42

75:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %76

76:                                               ; preds = %75, %40
  %77 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %16, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @debug_send_line(%struct.TYPE_12__*, i32, i8*, i32, i8*) #2

declare dso_local i32 @mbedtls_x509_crt_info(i8*, i32, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @debug_print_line_by_line(%struct.TYPE_12__*, i32, i8*, i32, i8*) #2

declare dso_local i32 @debug_print_pk(%struct.TYPE_12__*, i32, i8*, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
