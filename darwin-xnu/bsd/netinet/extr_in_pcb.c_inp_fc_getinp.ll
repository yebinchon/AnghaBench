; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_fc_getinp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_fc_getinp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inpcb = type { i32, i32 }

@INPFC_SOLOCKED = common dso_local global i32 0, align 4
@inp_fc_lck = common dso_local global i32 0, align 4
@key_inp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@inp_fc_tree = common dso_local global i32 0, align 4
@INPFC_REMOVE = common dso_local global i32 0, align 4
@INP2_IN_FCTREE = common dso_local global i32 0, align 4
@WNT_ACQUIRE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inpcb* (i32, i32)* @inp_fc_getinp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inpcb* @inp_fc_getinp(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.inpcb* null, %struct.inpcb** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @INPFC_SOLOCKED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %7, align 4
  %14 = call i32 @lck_mtx_lock_spin(i32* @inp_fc_lck)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @key_inp, i32 0, i32 0), align 4
  %16 = load i32, i32* @inp_fc_tree, align 4
  %17 = call %struct.inpcb* @RB_FIND(i32 %16, i32* @inp_fc_tree, %struct.TYPE_3__* @key_inp)
  store %struct.inpcb* %17, %struct.inpcb** %6, align 8
  %18 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %19 = icmp eq %struct.inpcb* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @lck_mtx_unlock(i32* @inp_fc_lck)
  store %struct.inpcb* null, %struct.inpcb** %3, align 8
  br label %52

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @INPFC_REMOVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* @inp_fc_tree, align 4
  %29 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %30 = call i32 @RB_REMOVE(i32 %28, i32* @inp_fc_tree, %struct.inpcb* %29)
  %31 = call i32 @lck_mtx_unlock(i32* @inp_fc_lck)
  %32 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 1
  %34 = call i32 @bzero(i32* %33, i32 4)
  %35 = load i32, i32* @INP2_IN_FCTREE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  store %struct.inpcb* null, %struct.inpcb** %3, align 8
  br label %52

41:                                               ; preds = %22
  %42 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %43 = load i32, i32* @WNT_ACQUIRE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @in_pcb_checkstate(%struct.inpcb* %42, i32 %43, i32 %44)
  %46 = load i64, i64* @WNT_STOPUSING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store %struct.inpcb* null, %struct.inpcb** %6, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = call i32 @lck_mtx_unlock(i32* @inp_fc_lck)
  %51 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  store %struct.inpcb* %51, %struct.inpcb** %3, align 8
  br label %52

52:                                               ; preds = %49, %27, %20
  %53 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  ret %struct.inpcb* %53
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local %struct.inpcb* @RB_FIND(i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.inpcb*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
