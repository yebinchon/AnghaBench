; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_patch_content.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_patch_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_SEVERAL_PATCHES_ARE_EXPLICITLY_DEFINED = common dso_local global i32 0, align 4
@MSG_DID_NOT_FIND_A_VALID_CONTENT_PATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8*, i8*, i32**, i8*)* @patch_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_content(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i32** %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %18, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %8
  %31 = phi i1 [ false, %8 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i1 [ false, %39 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %53, %54
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @MSG_SEVERAL_PATCHES_ARE_EXPLICITLY_DEFINED, align 4
  %59 = call i32 @msg_hash_to_str(i32 %58)
  %60 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 0, i32* %9, align 4
  br label %87

61:                                               ; preds = %48
  %62 = load i32, i32* %20, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32**, i32*** %16, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @try_ips_patch(i32 %62, i8* %63, i32** %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %21, align 4
  %70 = load i8*, i8** %14, align 8
  %71 = load i32**, i32*** %16, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = call i32 @try_bps_patch(i32 %69, i8* %70, i32** %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %19, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = load i32**, i32*** %16, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @try_ups_patch(i32 %76, i8* %77, i32** %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @MSG_DID_NOT_FIND_A_VALID_CONTENT_PATCH, align 4
  %84 = call i32 @msg_hash_to_str(i32 %83)
  %85 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 0, i32* %9, align 4
  br label %87

86:                                               ; preds = %75, %68, %61
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %82, %57
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @try_ips_patch(i32, i8*, i32**, i32*) #1

declare dso_local i32 @try_bps_patch(i32, i8*, i32**, i32*) #1

declare dso_local i32 @try_ups_patch(i32, i8*, i32**, i32*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
