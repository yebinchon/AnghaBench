; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_string_setting_options.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_string_setting_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i8* } (i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32)* @setting_string_setting_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i8* } @setting_string_setting_options(i32 %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i32 %4, i32* %20, align 4
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i8*, i8** %17, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = load i32, i32* %20, align 4
  %35 = load i8*, i8** %21, align 8
  %36 = load i8*, i8** %22, align 8
  %37 = load i8*, i8** %24, align 8
  %38 = load i8*, i8** %25, align 8
  %39 = load i8*, i8** %26, align 8
  %40 = load i32, i32* %27, align 4
  %41 = load i32, i32* %28, align 4
  %42 = load i32, i32* %29, align 4
  %43 = call { i8*, i8* } @setting_string_setting(i32 %30, i8* %31, i8* %32, i8* %33, i32 %34, i8* %35, i8* %36, i8* %37, i8* %38, i8* %39, i32 %40, i32 %41, i32 %42)
  %44 = bitcast %struct.TYPE_4__* %15 to { i8*, i8* }*
  %45 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %44, i32 0, i32 0
  %46 = extractvalue { i8*, i8* } %43, 0
  store i8* %46, i8** %45, align 8
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %44, i32 0, i32 1
  %48 = extractvalue { i8*, i8* } %43, 1
  store i8* %48, i8** %47, align 8
  %49 = load i8*, i8** %26, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = bitcast %struct.TYPE_4__* %15 to { i8*, i8* }*
  %54 = load { i8*, i8* }, { i8*, i8* }* %53, align 8
  ret { i8*, i8* } %54
}

declare dso_local { i8*, i8* } @setting_string_setting(i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
