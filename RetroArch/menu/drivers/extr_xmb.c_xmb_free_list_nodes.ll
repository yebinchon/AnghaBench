; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_free_list_nodes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_free_list_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @xmb_free_list_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_free_list_nodes(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @file_list_get_size(%struct.TYPE_8__* %7)
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @file_list_get_userdata_at_offset(%struct.TYPE_8__* %14, i32 %15)
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @xmb_free_node(i32* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @file_list_free_actiondata(%struct.TYPE_8__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local i32 @file_list_get_size(%struct.TYPE_8__*) #1

declare dso_local i32 @xmb_free_node(i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @file_list_free_actiondata(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
