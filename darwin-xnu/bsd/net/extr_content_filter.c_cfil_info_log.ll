; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_info = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cfil_info*, i8*)* @cfil_info_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_info_log(i32 %0, %struct.cfil_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfil_info*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cfil_info* %1, %struct.cfil_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %8 = icmp eq %struct.cfil_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %35

10:                                               ; preds = %3
  %11 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %12 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %18 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %21 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %24 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @cfil_hash_entry_log(i32 %16, i32 %19, i32* %22, i32 %25, i8* %26)
  br label %35

28:                                               ; preds = %10
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %31 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @cfil_inp_log(i32 %29, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %9, %28, %15
  ret void
}

declare dso_local i32 @cfil_hash_entry_log(i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @cfil_inp_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
