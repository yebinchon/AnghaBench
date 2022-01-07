; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_verify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_info = type { i32*, i32, i32 }

@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfil_info*)* @cfil_info_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_info_verify(%struct.cfil_info* %0) #0 {
  %2 = alloca %struct.cfil_info*, align 8
  %3 = alloca i32, align 4
  store %struct.cfil_info* %0, %struct.cfil_info** %2, align 8
  %4 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %5 = icmp eq %struct.cfil_info* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %9 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %8, i32 0, i32 2
  %10 = call i32 @cfil_info_buf_verify(i32* %9)
  %11 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %12 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %11, i32 0, i32 1
  %13 = call i32 @cfil_info_buf_verify(i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %26, %7
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %20 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @cfil_entry_verify(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %14

29:                                               ; preds = %6, %14
  ret void
}

declare dso_local i32 @cfil_info_buf_verify(i32*) #1

declare dso_local i32 @cfil_entry_verify(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
