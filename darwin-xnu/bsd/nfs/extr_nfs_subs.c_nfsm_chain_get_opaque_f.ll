; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_get_opaque_f.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_get_opaque_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i32, i32*, i64 }

@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_get_opaque_f(%struct.nfsm_chain* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsm_chain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @nfsm_rndup(i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %90, %3
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
  br i1 %25, label %26, label %91

26:                                               ; preds = %24
  %27 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %28 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @MIN(i32 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %36 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @bcopy(i32* %37, i32* %38, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %43 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %41
  store i32* %45, i32** %43, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %48 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 %53
  store i32* %55, i32** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %34, %26
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %64 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @mbuf_next(i64 %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %69 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i64, i64* %11, align 8
  %74 = call i32* @mbuf_data(i64 %73)
  br label %76

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32* [ %74, %72 ], [ null, %75 ]
  %78 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %79 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @mbuf_len(i64 %83)
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  %88 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %89 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %59
  br label %16

91:                                               ; preds = %24
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @EBADRPC, align 4
  store i32 %95, i32* %4, align 4
  br label %106

96:                                               ; preds = %91
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @nfsm_chain_adv(i32 %100, %struct.nfsm_chain* %101, i64 %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %94
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @nfsm_rndup(i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

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
