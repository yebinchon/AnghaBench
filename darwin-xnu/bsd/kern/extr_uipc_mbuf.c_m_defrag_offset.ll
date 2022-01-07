; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_defrag_offset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_defrag_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@M_PKTHDR = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_defrag_offset(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @M_PKTHDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %20, %struct.mbuf** %4, align 8
  br label %160

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MHLEN, align 4
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call i32 @m_fixhdr(%struct.mbuf* %27)
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @MHLEN, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MT_DATA, align 4
  %41 = load i32, i32* @M_PKTHDR, align 4
  %42 = call %struct.mbuf* @m_getcl(i32 %39, i32 %40, i32 %41)
  store %struct.mbuf* %42, %struct.mbuf** %9, align 8
  br label %47

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MT_DATA, align 4
  %46 = call %struct.mbuf* @m_gethdr(i32 %44, i32 %45)
  store %struct.mbuf* %46, %struct.mbuf** %9, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %153

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %51
  %64 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @m_dup_pkthdr(%struct.mbuf* %71, %struct.mbuf* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %153

77:                                               ; preds = %63
  %78 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %78, %struct.mbuf** %8, align 8
  br label %79

79:                                               ; preds = %147, %77
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %148

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @MCLBYTES, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @MCLBYTES, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %83
  %93 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %95 = icmp eq %struct.mbuf* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  br label %99

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %153

106:                                              ; preds = %99
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = icmp eq %struct.mbuf* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @MLEN, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @MT_DATA, align 4
  %116 = call %struct.mbuf* @m_getcl(i32 %114, i32 %115, i32 0)
  store %struct.mbuf* %116, %struct.mbuf** %8, align 8
  br label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @MT_DATA, align 4
  %120 = call %struct.mbuf* @m_get(i32 %118, i32 %119)
  store %struct.mbuf* %120, %struct.mbuf** %8, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %123 = icmp eq %struct.mbuf* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %153

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %106
  %127 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %131 = load i32, i32* @caddr_t, align 4
  %132 = call i32 @mtod(%struct.mbuf* %130, i32 %131)
  %133 = call i32 @m_copydata(%struct.mbuf* %127, i32 %128, i32 %129, i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %139 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %141 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %142 = icmp ne %struct.mbuf* %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %126
  %144 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %145 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %146 = call i32 @m_cat(%struct.mbuf* %144, %struct.mbuf* %145)
  br label %147

147:                                              ; preds = %143, %126
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  br label %79

148:                                              ; preds = %79
  %149 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %150 = call i32 @m_freem(%struct.mbuf* %149)
  %151 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %151, %struct.mbuf** %5, align 8
  %152 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %152, %struct.mbuf** %4, align 8
  br label %160

153:                                              ; preds = %124, %105, %76, %50
  %154 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %155 = icmp ne %struct.mbuf* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %158 = call i32 @m_freem(%struct.mbuf* %157)
  br label %159

159:                                              ; preds = %156, %153
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %160

160:                                              ; preds = %159, %148, %19
  %161 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %161
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_fixhdr(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i64 @m_dup_pkthdr(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
