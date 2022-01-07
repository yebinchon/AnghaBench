; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_prot.c_getsid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_prot.c_getsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getsid_args = type { i64 }
%struct.session = type { i32 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getsid(i32 %0, %struct.getsid_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.getsid_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.session*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.getsid_args* %1, %struct.getsid_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.getsid_args*, %struct.getsid_args** %6, align 8
  %13 = getelementptr inbounds %struct.getsid_args, %struct.getsid_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.getsid_args*, %struct.getsid_args** %6, align 8
  %19 = getelementptr inbounds %struct.getsid_args, %struct.getsid_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @proc_find(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ESRCH, align 4
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.session* @proc_session(i32 %27)
  store %struct.session* %28, %struct.session** %10, align 8
  %29 = load %struct.session*, %struct.session** %10, align 8
  %30 = getelementptr inbounds %struct.session, %struct.session* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.session*, %struct.session** %10, align 8
  %34 = call i32 @session_rele(%struct.session* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @proc_rele(i32 %38)
  br label %40

40:                                               ; preds = %37, %26
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @proc_find(i64) #1

declare dso_local %struct.session* @proc_session(i32) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i32 @proc_rele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
