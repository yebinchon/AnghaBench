; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_PeapClientSendMsChapv2AuthRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_PeapClientSendMsChapv2AuthRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32* }
%struct.TYPE_13__ = type { i64, i64*, i32 }
%struct.TYPE_12__ = type { i64 }

@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@EAP_TYPE_MS_AUTH = common dso_local global i64 0, align 8
@EAP_MSCHAPV2_OP_CHALLENGE = common dso_local global i64 0, align 8
@EAP_TYPE_LEGACY_NAK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PeapClientSendMsChapv2AuthRequest(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %170

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call i64 @StartPeapClient(%struct.TYPE_14__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %168

18:                                               ; preds = %14
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = call i64 @StartPeapSslClient(%struct.TYPE_14__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %167

22:                                               ; preds = %18
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i64 @GetRecvPeapMessage(%struct.TYPE_14__* %23, %struct.TYPE_13__* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %166

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %166

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %145, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %170

38:                                               ; preds = %32
  %39 = call i32 @Zero(%struct.TYPE_13__* %7, i32 24)
  %40 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @StrLen(i32* %44)
  %46 = add nsw i32 5, %45
  %47 = call i32 @Endian16(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @StrLen(i32* %56)
  %58 = call i32 @Copy(i64* %50, i32* %53, i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @StrLen(i32* %62)
  %64 = add nsw i32 5, %63
  %65 = call i64 @SendPeapPacket(%struct.TYPE_14__* %59, %struct.TYPE_13__* %7, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %165

67:                                               ; preds = %38
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = call i64 @GetRecvPeapMessage(%struct.TYPE_14__* %68, %struct.TYPE_13__* %6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %165

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %161, %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sge i32 %75, 10
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %170

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = bitcast %struct.TYPE_13__* %6 to %struct.TYPE_12__*
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EAP_MSCHAPV2_OP_CHALLENGE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = bitcast %struct.TYPE_13__* %6 to i32*
  store i32* %90, i32** %8, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @Copy(i64* %92, i32* %93, i32 4)
  store i32 1, i32* %4, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %164

97:                                               ; preds = %83, %78
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %97
  %103 = bitcast %struct.TYPE_13__* %6 to i32*
  store i32* %103, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %145

108:                                              ; preds = %102
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 33
  br i1 %112, label %113, label %145

113:                                              ; preds = %108
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %145

118:                                              ; preds = %113
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 10
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %145

123:                                              ; preds = %118
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 11
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 12
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 13
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 14
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %170

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %133, %128, %123, %118, %113, %108, %102
  br label %32

146:                                              ; preds = %97
  %147 = call i32 @Zero(%struct.TYPE_13__* %10, i32 24)
  %148 = load i64, i64* @EAP_TYPE_LEGACY_NAK, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 %148, i64* %149, align 8
  %150 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = call i64 @SendPeapPacket(%struct.TYPE_14__* %154, %struct.TYPE_13__* %10, i32 6)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = call i64 @GetRecvPeapMessage(%struct.TYPE_14__* %158, %struct.TYPE_13__* %6)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %72

162:                                              ; preds = %157, %146
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %89
  br label %165

165:                                              ; preds = %164, %67, %38
  br label %166

166:                                              ; preds = %165, %26, %22
  br label %167

167:                                              ; preds = %166, %18
  br label %168

168:                                              ; preds = %167, %14
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %143, %77, %37, %13
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i64 @StartPeapClient(%struct.TYPE_14__*) #1

declare dso_local i64 @StartPeapSslClient(%struct.TYPE_14__*) #1

declare dso_local i64 @GetRecvPeapMessage(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @StrLen(i32*) #1

declare dso_local i32 @Copy(i64*, i32*, i32) #1

declare dso_local i64 @SendPeapPacket(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
