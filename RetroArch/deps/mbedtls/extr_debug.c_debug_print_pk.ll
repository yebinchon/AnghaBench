; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_debug_print_pk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_debug_print_pk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@MBEDTLS_PK_DEBUG_MAX_ITEMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid PK context\0A\00", align 1
@MBEDTLS_PK_DEBUG_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@MBEDTLS_PK_DEBUG_MPI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"should not happen\0A\00", align 1
@MBEDTLS_PK_DEBUG_ECP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i8*, i32*)* @debug_print_pk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_pk(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @MBEDTLS_PK_DEBUG_MAX_ITEMS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca %struct.TYPE_4__, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = mul nuw i64 16, %19
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.TYPE_4__* %21, i32 0, i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = call i64 @mbedtls_pk_debug(i32* %25, %struct.TYPE_4__* %21)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @debug_send_line(i32* %29, i32 %30, i8* %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %85

34:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %81, %34
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* @MBEDTLS_PK_DEBUG_MAX_ITEMS, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 16
  %45 = load i64, i64* @MBEDTLS_PK_DEBUG_NONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %17, align 4
  br label %85

48:                                               ; preds = %40
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mbedtls_snprintf(i8* %49, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %54)
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 15
  store i8 0, i8* %56, align 1
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 16
  %61 = load i64, i64* @MBEDTLS_PK_DEBUG_MPI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %48
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mbedtls_debug_print_mpi(i32* %64, i32 %65, i8* %66, i32 %67, i8* %68, i32 %72)
  br label %80

74:                                               ; preds = %48
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @debug_send_line(i32* %75, i32 %76, i8* %77, i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %63
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %13, align 8
  br label %35

84:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %84, %47, %28
  %86 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %17, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @mbedtls_pk_debug(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @debug_send_line(i32*, i32, i8*, i32, i8*) #2

declare dso_local i32 @mbedtls_snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @mbedtls_debug_print_mpi(i32*, i32, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
