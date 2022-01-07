; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_mount_sd_fat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_mount_sd_fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_sd_fat(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = call i8* @malloc(i32 4)
  store i8* %8, i8** %5, align 8
  %9 = call i8* @malloc(i32 4)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %1
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @free(i8* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %24, %21
  store i32 -2, i32* %2, align 4
  br label %48

28:                                               ; preds = %12
  %29 = call i32 (...) @FSInit()
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @FSInitCmdBlock(i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @FSAddClient(i8* %32, i32 -1)
  store i8* null, i8** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @MountFS(i8* %34, i8* %35, i8** %7)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @sd_fat_add_device(i8* %39, i8* %40, i8* %41, i8* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %38, %28
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FSInit(...) #1

declare dso_local i32 @FSInitCmdBlock(i8*) #1

declare dso_local i32 @FSAddClient(i8*, i32) #1

declare dso_local i64 @MountFS(i8*, i8*, i8**) #1

declare dso_local i32 @sd_fat_add_device(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
