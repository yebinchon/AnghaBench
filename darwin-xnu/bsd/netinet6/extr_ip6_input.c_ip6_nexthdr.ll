; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_nexthdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_nexthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip6_hdr = type { i32 }
%struct.ip6_ext = type { i32, i32 }
%struct.ip6_frag = type { i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@IP6F_OFF_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_nexthdr(%struct.mbuf* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ip6_hdr, align 4
  %11 = alloca %struct.ip6_ext, align 4
  %12 = alloca %struct.ip6_frag, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @M_PKTHDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %4
  store i32 -1, i32* %5, align 4
  br label %158

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %157 [
    i32 130, label %33
    i32 133, label %61
    i32 136, label %96
    i32 132, label %126
    i32 128, label %126
    i32 135, label %126
    i32 129, label %156
    i32 134, label %156
    i32 131, label %156
  ]

33:                                               ; preds = %31
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %158

44:                                               ; preds = %33
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = ptrtoint %struct.ip6_hdr* %10 to i32
  %48 = call i32 @m_copydata(%struct.mbuf* %45, i32 %46, i32 4, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %5, align 4
  br label %158

61:                                               ; preds = %31
  %62 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %158

72:                                               ; preds = %61
  %73 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = ptrtoint %struct.ip6_frag* %12 to i32
  %76 = call i32 @m_copydata(%struct.mbuf* %73, i32 %74, i32 8, i32 %75)
  %77 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IP6F_OFF_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 -1, i32* %5, align 4
  br label %158

83:                                               ; preds = %72
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %12, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %5, align 4
  br label %158

96:                                               ; preds = %31
  %97 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %158

107:                                              ; preds = %96
  %108 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = ptrtoint %struct.ip6_ext* %11 to i32
  %111 = call i32 @m_copydata(%struct.mbuf* %108, i32 %109, i32 8, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 2
  %122 = shl i32 %121, 2
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %5, align 4
  br label %158

126:                                              ; preds = %31, %31, %31
  %127 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %128 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, 8
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %158

137:                                              ; preds = %126
  %138 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = ptrtoint %struct.ip6_ext* %11 to i32
  %141 = call i32 @m_copydata(%struct.mbuf* %138, i32 %139, i32 8, i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %9, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %137
  %149 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  %152 = shl i32 %151, 3
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %5, align 4
  br label %158

156:                                              ; preds = %31, %31, %31
  store i32 -1, i32* %5, align 4
  br label %158

157:                                              ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %156, %148, %136, %118, %106, %90, %82, %71, %55, %43, %30
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
