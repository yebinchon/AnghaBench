; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_gencmd_until.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_gencmd_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_gencmd_until(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %14, align 4
  %15 = call i32 (...) @use_gencmd_service()
  br label %16

16:                                               ; preds = %44, %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @vc_gencmd(i8* %20, i32 128, i8* %21)
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @strstr(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %14, align 4
  br label %47

28:                                               ; preds = %19
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @vc_gencmd_string_property(i8* %29, i8* %30, i8** %13, i32* %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = call i64 @strncmp(i8* %34, i8* %35, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %47

41:                                               ; preds = %33, %28
  br label %42

42:                                               ; preds = %41
  %43 = call i32 @vcos_sleep(i32 10)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 10
  store i32 %46, i32* %10, align 4
  br label %16

47:                                               ; preds = %40, %27, %16
  %48 = call i32 (...) @release_gencmd_service()
  %49 = load i32, i32* %14, align 4
  ret i32 %49
}

declare dso_local i32 @use_gencmd_service(...) #1

declare dso_local i32 @vc_gencmd(i8*, i32, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @vc_gencmd_string_property(i8*, i8*, i8**, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @vcos_sleep(i32) #1

declare dso_local i32 @release_gencmd_service(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
