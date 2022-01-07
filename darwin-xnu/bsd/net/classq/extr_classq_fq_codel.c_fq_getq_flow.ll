; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_fq_codel.c_fq_getq_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_fq_codel.c_fq_getq_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32* }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.timespec = type { i32, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@FQF_FLOWCTL_ON = common dso_local global i32 0, align 4
@QP_MBUF = common dso_local global i64 0, align 8
@PKTF_PRIV_GUARDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fq_getq_flow(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = call i8* @fq_getq_flow_internal(%struct.TYPE_21__* %16, %struct.TYPE_20__* %17, %struct.TYPE_19__* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %156

23:                                               ; preds = %3
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = call i32 @pktsched_get_pkt_vars(%struct.TYPE_19__* %24, i32** %13, i64** %15, i32* null, i32* null, i32* null, i32* %14)
  %26 = call i32 @nanouptime(%struct.timespec* %12)
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NSEC_PER_SEC, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64*, i64** %15, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %15, align 8
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %40, %42
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %39, %23
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %44
  %57 = load i64, i64* %11, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %44
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59, %56
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = call i32 @FQ_IS_DELAYHIGH(%struct.TYPE_20__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = call i32 @FQ_SET_DELAY_HIGH(%struct.TYPE_20__* %88)
  br label %90

90:                                               ; preds = %87, %83
  br label %94

91:                                               ; preds = %75
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = call i32 @FQ_CLEAR_DELAY_HIGH(%struct.TYPE_20__* %92)
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %94, %69
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = call i32 @FQ_IS_DELAYHIGH(%struct.TYPE_20__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = call i64 @fq_empty(%struct.TYPE_20__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %108, %104
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = call i32 @FQ_CLEAR_DELAY_HIGH(%struct.TYPE_20__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FQF_FLOWCTL_ON, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @fq_if_flow_feedback(%struct.TYPE_21__* %122, %struct.TYPE_20__* %123, i32* %124)
  br label %126

126:                                              ; preds = %121, %112
  br label %127

127:                                              ; preds = %126, %108
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %129 = call i64 @fq_empty(%struct.TYPE_20__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  br label %138

134:                                              ; preds = %127
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %131
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = call i32 @fq_if_is_flow_heavy(%struct.TYPE_21__* %139, %struct.TYPE_20__* %140)
  %142 = load i64*, i64** %15, align 8
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @QP_MBUF, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %138
  %149 = load i32, i32* @PKTF_PRIV_GUARDED, align 4
  %150 = xor i32 %149, -1
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %138
  %155 = load i8*, i8** %8, align 8
  store i8* %155, i8** %4, align 8
  br label %156

156:                                              ; preds = %154, %22
  %157 = load i8*, i8** %4, align 8
  ret i8* %157
}

declare dso_local i8* @fq_getq_flow_internal(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @pktsched_get_pkt_vars(%struct.TYPE_19__*, i32**, i64**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @FQ_IS_DELAYHIGH(%struct.TYPE_20__*) #1

declare dso_local i32 @FQ_SET_DELAY_HIGH(%struct.TYPE_20__*) #1

declare dso_local i32 @FQ_CLEAR_DELAY_HIGH(%struct.TYPE_20__*) #1

declare dso_local i64 @fq_empty(%struct.TYPE_20__*) #1

declare dso_local i32 @fq_if_flow_feedback(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @fq_if_is_flow_heavy(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
