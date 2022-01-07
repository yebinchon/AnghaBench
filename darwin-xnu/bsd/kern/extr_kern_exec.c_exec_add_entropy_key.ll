; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_add_entropy_key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_add_entropy_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32 }

@HEX_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s0x%llx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",0x%llx\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*, i8*, i32, i64)* @exec_add_entropy_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_add_entropy_key(%struct.image_params* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 8, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i32, i32* @HEX_STR_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 %18, %21
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 8, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @read_random(i32* %31, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = sext i32 %41 to i64
  %43 = and i64 %42, -65281
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 16
  br label %45

45:                                               ; preds = %39, %30
  %46 = trunc i64 %24 to i32
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %24, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %81, %45
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %60, 0
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i1 [ false, %55 ], [ %61, %59 ]
  br i1 %63, label %64, label %84

64:                                               ; preds = %62
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %24, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %26, i64 %70
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %55

84:                                               ; preds = %62
  %85 = load %struct.image_params*, %struct.image_params** %5, align 8
  %86 = call i32 @CAST_USER_ADDR_T(i8* %26)
  %87 = load i32, i32* @UIO_SYSSPACE, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @exec_add_user_string(%struct.image_params* %85, i32 %86, i32 %87, i32 %88)
  %90 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read_random(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @exec_add_user_string(%struct.image_params*, i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
