; ModuleID = '/home/carl/AnghaBench/RetroArch/wifi/drivers/extr_connmanctl.c_connmanctl_get_ssids.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wifi/drivers/extr_connmanctl.c_connmanctl_get_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i32 }

@RARCH_FILETYPE_UNSET = common dso_local global i32 0, align 4
@lines = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @connmanctl_get_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connmanctl_get_ssids(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.string_list_elem_attr, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %7 = load i32, i32* @RARCH_FILETYPE_UNSET, align 4
  %8 = bitcast %union.string_list_elem_attr* %4 to i32*
  store i32 %7, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lines, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lines, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lines, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = call i32 @strlcpy(i8* %28, i8* %30, i32 20)
  %32 = load %struct.string_list*, %struct.string_list** %2, align 8
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %34 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @string_list_append(%struct.string_list* %32, i8* %33, i32 %35)
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %13

40:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
