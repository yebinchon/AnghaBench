; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_count_chain_len.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_count_chain_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.chain_len_stats = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.chain_len_stats*)* @dlil_count_chain_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_count_chain_len(%struct.TYPE_3__* %0, %struct.chain_len_stats* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.chain_len_stats*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.chain_len_stats* %1, %struct.chain_len_stats** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %11, %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %37 [
    i32 0, label %19
    i32 1, label %20
    i32 2, label %24
    i32 3, label %28
    i32 4, label %32
    i32 5, label %36
  ]

19:                                               ; preds = %17
  br label %41

20:                                               ; preds = %17
  %21 = load %struct.chain_len_stats*, %struct.chain_len_stats** %4, align 8
  %22 = getelementptr inbounds %struct.chain_len_stats, %struct.chain_len_stats* %21, i32 0, i32 4
  %23 = call i32 @atomic_add_64(i32* %22, i32 1)
  br label %41

24:                                               ; preds = %17
  %25 = load %struct.chain_len_stats*, %struct.chain_len_stats** %4, align 8
  %26 = getelementptr inbounds %struct.chain_len_stats, %struct.chain_len_stats* %25, i32 0, i32 3
  %27 = call i32 @atomic_add_64(i32* %26, i32 1)
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.chain_len_stats*, %struct.chain_len_stats** %4, align 8
  %30 = getelementptr inbounds %struct.chain_len_stats, %struct.chain_len_stats* %29, i32 0, i32 2
  %31 = call i32 @atomic_add_64(i32* %30, i32 1)
  br label %41

32:                                               ; preds = %17
  %33 = load %struct.chain_len_stats*, %struct.chain_len_stats** %4, align 8
  %34 = getelementptr inbounds %struct.chain_len_stats, %struct.chain_len_stats* %33, i32 0, i32 1
  %35 = call i32 @atomic_add_64(i32* %34, i32 1)
  br label %41

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %17, %36
  %38 = load %struct.chain_len_stats*, %struct.chain_len_stats** %4, align 8
  %39 = getelementptr inbounds %struct.chain_len_stats, %struct.chain_len_stats* %38, i32 0, i32 0
  %40 = call i32 @atomic_add_64(i32* %39, i32 1)
  br label %41

41:                                               ; preds = %37, %32, %28, %24, %20, %19
  ret void
}

declare dso_local i32 @atomic_add_64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
