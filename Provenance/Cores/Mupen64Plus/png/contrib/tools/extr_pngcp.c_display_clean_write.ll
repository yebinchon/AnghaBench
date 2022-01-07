; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_clean_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_clean_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @display_clean_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_clean_write(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  %3 = alloca i32*, align 8
  store %struct.display* %0, %struct.display** %2, align 8
  %4 = load %struct.display*, %struct.display** %2, align 8
  %5 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.display*, %struct.display** %2, align 8
  %10 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.display*, %struct.display** %2, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fclose(i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.display*, %struct.display** %2, align 8
  %18 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.display*, %struct.display** %2, align 8
  %23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 2
  %24 = load %struct.display*, %struct.display** %2, align 8
  %25 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.display*, %struct.display** %2, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 1
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32* [ null, %28 ], [ %31, %29 ]
  %34 = call i32 @png_destroy_write_struct(i32** %23, i32* %33)
  br label %35

35:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @png_destroy_write_struct(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
