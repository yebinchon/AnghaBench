; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_tty.c_cttyvp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_tty.c_cttyvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.session = type { i64, i32 }

@P_CONTROLT = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*)* @cttyvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cttyvp(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.session*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = call %struct.session* @proc_session(%struct.TYPE_4__* %6)
  store %struct.session* %7, %struct.session** %5, align 8
  %8 = load %struct.session*, %struct.session** %5, align 8
  %9 = call i32 @session_lock(%struct.session* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @P_CONTROLT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.session*, %struct.session** %5, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @NULLVP, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  store i64 %23, i64* %3, align 8
  %24 = load %struct.session*, %struct.session** %5, align 8
  %25 = getelementptr inbounds %struct.session, %struct.session* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.session*, %struct.session** %5, align 8
  %28 = call i32 @session_unlock(%struct.session* %27)
  %29 = load %struct.session*, %struct.session** %5, align 8
  %30 = call i32 @session_rele(%struct.session* %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @NULLVP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @vnode_getwithvid(i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @NULLVP, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %34
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local %struct.session* @proc_session(%struct.TYPE_4__*) #1

declare dso_local i32 @session_lock(%struct.session*) #1

declare dso_local i32 @session_unlock(%struct.session*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i64 @vnode_getwithvid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
