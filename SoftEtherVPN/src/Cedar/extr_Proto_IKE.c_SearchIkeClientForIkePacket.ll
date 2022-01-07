; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SearchIkeClientForIkePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SearchIkeClientForIkePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__*, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_16__* }

@IPSEC_PORT_IPSEC_ESP_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @SearchIkeClientForIkePacket(%struct.TYPE_13__* %0, i32* %1, i64 %2, i32* %3, i64 %4, %struct.TYPE_15__* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %26 = icmp eq %struct.TYPE_15__* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %27, %24, %6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %204

40:                                               ; preds = %36
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %102

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %102

50:                                               ; preds = %45
  store i64 0, i64* %16, align 8
  br label %51

51:                                               ; preds = %98, %50
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @LIST_NUM(i32 %55)
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %16, align 8
  %63 = call %struct.TYPE_14__* @LIST_DATA(i32 %61, i64 %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %17, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %58
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %71
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %18, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32*, i32** %11, align 8
  %86 = call i64 @CmpIpAddr(i32* %84, i32* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @CmpIpAddr(i32* %90, i32* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %15, align 8
  br label %101

96:                                               ; preds = %88, %79
  br label %97

97:                                               ; preds = %96, %71, %58
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %16, align 8
  br label %51

101:                                              ; preds = %94, %51
  br label %102

102:                                              ; preds = %101, %45, %40
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %104 = icmp eq %struct.TYPE_16__* %103, null
  br i1 %104, label %105, label %202

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 4
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @Copy(i32* %106, i32* %107, i32 4)
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  store i64 %109, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @Copy(i32* %111, i32* %112, i32 4)
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.TYPE_16__* @Search(i32 %118, %struct.TYPE_16__* %14)
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %15, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %121 = icmp ne %struct.TYPE_16__* %120, null
  br i1 %121, label %122, label %201

122:                                              ; preds = %105
  store i32 0, i32* %19, align 4
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @IPSEC_PORT_IPSEC_ESP_UDP, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 1, i32* %19, align 4
  br label %196

127:                                              ; preds = %122
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = icmp ne %struct.TYPE_12__* %130, null
  br i1 %131, label %132, label %153

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %132
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  store i32 1, i32* %19, align 4
  br label %195

153:                                              ; preds = %142, %132, %127
  store i64 0, i64* %20, align 8
  br label %154

154:                                              ; preds = %191, %153
  %155 = load i64, i64* %20, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @LIST_NUM(i32 %158)
  %160 = icmp slt i64 %155, %159
  br i1 %160, label %161, label %194

161:                                              ; preds = %154
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* %20, align 8
  %166 = call %struct.TYPE_14__* @LIST_DATA(i32 %164, i64 %165)
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %21, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %171 = icmp eq %struct.TYPE_16__* %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %161
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  store i32 1, i32* %19, align 4
  br label %194

189:                                              ; preds = %180, %172
  br label %190

190:                                              ; preds = %189, %161
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %20, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %20, align 8
  br label %154

194:                                              ; preds = %188, %154
  br label %195

195:                                              ; preds = %194, %152
  br label %196

196:                                              ; preds = %195, %126
  %197 = load i32, i32* %19, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  br label %200

200:                                              ; preds = %199, %196
  br label %201

201:                                              ; preds = %200, %105
  br label %202

202:                                              ; preds = %201, %102
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %203, %struct.TYPE_16__** %7, align 8
  br label %204

204:                                              ; preds = %202, %39
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %205
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_14__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_16__* @Search(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
