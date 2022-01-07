; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/app_booter/extr_main.c_app_booter_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/app_booter/extr_main.c_app_booter_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@EXECUTABLE_MEM_ADDR = common dso_local global i64 0, align 8
@SYSTEM_ARGV = common dso_local global %struct.TYPE_3__* null, align 8
@ARGV_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_booter_main() #0 {
  %1 = alloca i32 (...)*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i64 0, i64* %2, align 8
  %5 = load i64, i64* @EXECUTABLE_MEM_ADDR, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @valid_elf_image(i8* %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @load_elf_image(i8* %11)
  store i64 %12, i64* %2, align 8
  br label %16

13:                                               ; preds = %0
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @load_dol_image(i8* %14)
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* %2, align 8
  %18 = inttoptr i64 %17 to i32 (...)*
  store i32 (...)* %18, i32 (...)** %1, align 8
  %19 = load i32 (...)*, i32 (...)** %1, align 8
  %20 = icmp ne i32 (...)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %40

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SYSTEM_ARGV, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ARGV_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i64, i64* %2, align 8
  %30 = add nsw i64 %29, 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SYSTEM_ARGV, align 8
  %34 = call i32 @memcpy(i8* %32, %struct.TYPE_3__* %33, i32 4)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @sync_before_exec(i8* %35, i32 4)
  br label %37

37:                                               ; preds = %28, %22
  %38 = load i32 (...)*, i32 (...)** %1, align 8
  %39 = call i32 (...) %38()
  br label %40

40:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @valid_elf_image(i8*) #1

declare dso_local i64 @load_elf_image(i8*) #1

declare dso_local i64 @load_dol_image(i8*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @sync_before_exec(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
