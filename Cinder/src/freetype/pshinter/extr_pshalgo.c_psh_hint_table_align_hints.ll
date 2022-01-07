; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshalgo.c_psh_hint_table_align_hints.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshalgo.c_psh_hint_table_align_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@ps_debug_no_horz_hints = common dso_local global i64 0, align 8
@ps_debug_no_vert_hints = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i32)* @psh_hint_table_align_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_hint_table_align_hints(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %26, %4
  %18 = load i64, i64* %10, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @psh_hint_align(i32 %21, %struct.TYPE_9__* %22, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %17

31:                                               ; preds = %17
  ret void
}

declare dso_local i32 @psh_hint_align(i32, %struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
