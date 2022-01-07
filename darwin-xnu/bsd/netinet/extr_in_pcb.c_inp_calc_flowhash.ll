; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_calc_flowhash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_calc_flowhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.inp_flowhash_key = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@inp_hash_seed = common dso_local global i64 0, align 8
@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@inp_fc_lck = common dso_local global i32 0, align 4
@inp_fc_tree = common dso_local global i32 0, align 4
@INP2_IN_FCTREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inp_calc_flowhash(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inp_flowhash_key, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  store i64 0, i64* %4, align 8
  store %struct.inpcb* null, %struct.inpcb** %5, align 8
  %6 = load i64, i64* @inp_hash_seed, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i64 (...) @RandomULong()
  store i64 %9, i64* @inp_hash_seed, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i32 @bzero(%struct.inp_flowhash_key* %3, i32 40)
  %12 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 7
  %15 = call i32 @bcopy(i32* %13, i32* %14, i32 4)
  %16 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 6
  %19 = call i32 @bcopy(i32* %17, i32* %18, i32 4)
  %20 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @INP_IPV6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %10
  %35 = load i32, i32* @AF_INET6, align 4
  br label %38

36:                                               ; preds = %10
  %37 = load i32, i32* @AF_INET, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = call i64 (...) @RandomULong()
  %46 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = call i64 (...) @RandomULong()
  %48 = getelementptr inbounds %struct.inp_flowhash_key, %struct.inp_flowhash_key* %3, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %66, %54, %38
  %50 = load i64, i64* @inp_hash_seed, align 8
  %51 = call i64 @net_flowhash(%struct.inp_flowhash_key* %3, i32 40, i64 %50)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i64 (...) @RandomULong()
  store i64 %55, i64* @inp_hash_seed, align 8
  br label %49

56:                                               ; preds = %49
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = call i32 @lck_mtx_lock_spin(i32* @inp_fc_lck)
  %61 = load i32, i32* @inp_fc_tree, align 4
  %62 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %63 = call %struct.inpcb* @RB_FIND(i32 %61, i32* @inp_fc_tree, %struct.inpcb* %62)
  store %struct.inpcb* %63, %struct.inpcb** %5, align 8
  %64 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %65 = icmp ne %struct.inpcb* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = call i32 @lck_mtx_unlock(i32* @inp_fc_lck)
  %68 = call i64 (...) @RandomULong()
  store i64 %68, i64* @inp_hash_seed, align 8
  br label %49

69:                                               ; preds = %56
  %70 = load i32, i32* @inp_fc_tree, align 4
  %71 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %72 = call i32 @RB_INSERT(i32 %70, i32* @inp_fc_tree, %struct.inpcb* %71)
  %73 = load i32, i32* @INP2_IN_FCTREE, align 4
  %74 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %75 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = call i32 @lck_mtx_unlock(i32* @inp_fc_lck)
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i64 @RandomULong(...) #1

declare dso_local i32 @bzero(%struct.inp_flowhash_key*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @net_flowhash(%struct.inp_flowhash_key*, i32, i64) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local %struct.inpcb* @RB_FIND(i32, i32*, %struct.inpcb*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
