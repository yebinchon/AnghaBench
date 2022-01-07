; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_adj.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_adj(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %9, %struct.mbuf** %6, align 8
  %10 = icmp eq %struct.mbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %170

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %52, %15
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %53

24:                                               ; preds = %22
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 3
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  store %struct.mbuf* %40, %struct.mbuf** %6, align 8
  br label %52

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %41, %30
  br label %16

53:                                               ; preds = %22
  %54 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %54, %struct.mbuf** %6, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @M_PKTHDR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, %64
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %61, %53
  br label %170

71:                                               ; preds = %12
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %85, %71
  %75 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 3
  %82 = load %struct.mbuf*, %struct.mbuf** %81, align 8
  %83 = icmp eq %struct.mbuf* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %89

85:                                               ; preds = %74
  %86 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 3
  %88 = load %struct.mbuf*, %struct.mbuf** %87, align 8
  store %struct.mbuf* %88, %struct.mbuf** %6, align 8
  br label %74

89:                                               ; preds = %84
  %90 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %101, %struct.mbuf** %6, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @M_PKTHDR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %95
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %111 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, %109
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %108, %95
  br label %170

116:                                              ; preds = %89
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %116
  %124 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %124, %struct.mbuf** %6, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @M_PKTHDR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %123
  br label %137

137:                                              ; preds = %156, %136
  %138 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %139 = icmp ne %struct.mbuf* %138, null
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %149 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %160

150:                                              ; preds = %140
  %151 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %152 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %150
  %157 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 3
  %159 = load %struct.mbuf*, %struct.mbuf** %158, align 8
  store %struct.mbuf* %159, %struct.mbuf** %6, align 8
  br label %137

160:                                              ; preds = %146, %137
  br label %161

161:                                              ; preds = %166, %160
  %162 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %163 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %162, i32 0, i32 3
  %164 = load %struct.mbuf*, %struct.mbuf** %163, align 8
  store %struct.mbuf* %164, %struct.mbuf** %6, align 8
  %165 = icmp ne %struct.mbuf* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  br label %161

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %11, %115, %169, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
