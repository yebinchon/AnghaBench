; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_subsystem_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_subsystem_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_subsystem_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_subsystem_load(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4096 x i8], align 16
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %17, align 16
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %38, %7
  %19 = load i32, i32* %15, align 4
  %20 = call i32 (...) @content_get_subsystem_rom_id()
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %24 = call i32 @strlcat(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4096)
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @content_get_subsystem_rom(i32 %26)
  %28 = call i8* @path_basename(i32 %27)
  %29 = call i32 @strlcat(i8* %25, i8* %28, i32 4096)
  %30 = load i32, i32* %15, align 4
  %31 = call i32 (...) @content_get_subsystem_rom_id()
  %32 = sub nsw i32 %31, 1
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %36 = call i32 @strlcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 4096)
  br label %37

37:                                               ; preds = %34, %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %15, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %18

41:                                               ; preds = %18
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %43 = call i32 @string_is_empty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @strlcpy(i8* %46, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %41
  ret i32 0
}

declare dso_local i32 @content_get_subsystem_rom_id(...) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i8* @path_basename(i32) #1

declare dso_local i32 @content_get_subsystem_rom(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
