; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_get_uio.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_get_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i32, i32*, i64 }

@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_get_uio(%struct.nfsm_chain* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsm_chain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @nfsm_rndup(i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %92, %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %21 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %93

26:                                               ; preds = %24
  %27 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %28 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @MIN(i32 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %26
  %35 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %36 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @uiomove(i32* %37, i64 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %108

45:                                               ; preds = %34
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %48 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %46
  store i32* %50, i32** %48, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %53 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %45, %26
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  %65 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %66 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @mbuf_next(i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %71 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i64, i64* %11, align 8
  %76 = call i32* @mbuf_data(i64 %75)
  br label %78

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32* [ %76, %74 ], [ null, %77 ]
  %80 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %81 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @mbuf_len(i64 %85)
  br label %88

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  %90 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %91 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %61
  br label %16

93:                                               ; preds = %24
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @EBADRPC, align 4
  store i32 %97, i32* %4, align 4
  br label %108

98:                                               ; preds = %93
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @nfsm_chain_adv(i32 %102, %struct.nfsm_chain* %103, i64 %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %96, %43
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @nfsm_rndup(i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @uiomove(i32*, i64, i32) #1

declare dso_local i64 @mbuf_next(i64) #1

declare dso_local i32* @mbuf_data(i64) #1

declare dso_local i32 @mbuf_len(i64) #1

declare dso_local i32 @nfsm_chain_adv(i32, %struct.nfsm_chain*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
