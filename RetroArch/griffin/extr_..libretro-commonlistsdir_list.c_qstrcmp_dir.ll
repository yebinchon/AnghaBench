; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsdir_list.c_qstrcmp_dir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsdir_list.c_qstrcmp_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_elem = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @qstrcmp_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qstrcmp_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list_elem*, align 8
  %7 = alloca %struct.string_list_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.string_list_elem*
  store %struct.string_list_elem* %11, %struct.string_list_elem** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.string_list_elem*
  store %struct.string_list_elem* %13, %struct.string_list_elem** %7, align 8
  %14 = load %struct.string_list_elem*, %struct.string_list_elem** %6, align 8
  %15 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.string_list_elem*, %struct.string_list_elem** %7, align 8
  %19 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.string_list_elem*, %struct.string_list_elem** %6, align 8
  %31 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.string_list_elem*, %struct.string_list_elem** %7, align 8
  %34 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcasecmp(i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @strcasecmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
