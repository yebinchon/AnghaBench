; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCProcessL3EventsEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCProcessL3EventsEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32* }

@MAC_PROTO_ARPV4 = common dso_local global i64 0, align 8
@MAC_PROTO_IPV4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPCProcessL3EventsEx(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = icmp eq %struct.TYPE_18__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %200

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @Tick64()
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @IPCFlushArpTableEx(%struct.TYPE_18__* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %194
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = call %struct.TYPE_20__* @IPCRecvL2(%struct.TYPE_18__* %27)
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %5, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = icmp eq %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %197

32:                                               ; preds = %26
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 14
  br i1 %36, label %37, label %194

37:                                               ; preds = %32
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32* %41, i32** %6, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  store i32* %45, i32** %7, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 12
  %50 = call i64 @READ_USHORT(i32* %49)
  store i64 %50, i64* %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @Cmp(i32* %51, i32 %54, i32 6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %37
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %193

63:                                               ; preds = %57, %37
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @Cmp(i32* %64, i32 %67, i32 6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %192

70:                                               ; preds = %63
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @IsValidUnicastMacAddress(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %192

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @MAC_PROTO_ARPV4, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = call i32 @IPCProcessArp(%struct.TYPE_18__* %79, %struct.TYPE_20__* %80)
  br label %191

82:                                               ; preds = %74
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @MAC_PROTO_IPV4, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %190

86:                                               ; preds = %82
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 34
  br i1 %90, label %91, label %189

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 14
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 14
  %100 = call i32* @Clone(i32* %95, i32 %99)
  store i32* %100, i32** %9, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 14
  store i32 %104, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 12
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @UINTToIP(%struct.TYPE_19__* %11, i32 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @UINTToIP(%struct.TYPE_19__* %12, i32 %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = call i64 @CmpIpAddr(%struct.TYPE_19__* %12, %struct.TYPE_19__* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %91
  store i32 1, i32* %13, align 4
  br label %171

118:                                              ; preds = %91
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 255
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 255
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 255
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 1, i32* %13, align 4
  br label %170

143:                                              ; preds = %136, %130, %124, %118
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %147, 224
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sle i32 %153, 239
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i32 1, i32* %13, align 4
  br label %169

156:                                              ; preds = %149, %143
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = call i64 @CmpIpAddr(%struct.TYPE_19__* %158, %struct.TYPE_19__* %12)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 1, i32* %13, align 4
  br label %162

162:                                              ; preds = %161, %156
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = call i64 @IsZeroIP(%struct.TYPE_19__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 1, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %162
  br label %169

169:                                              ; preds = %168, %155
  br label %170

170:                                              ; preds = %169, %142
  br label %171

171:                                              ; preds = %170, %117
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @IPCAssociateOnArpTable(%struct.TYPE_18__* %175, %struct.TYPE_19__* %11, i32* %176)
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @NewBlock(i32* %181, i32 %182, i32 0)
  %184 = call i32 @InsertQueue(i32 %180, i32 %183)
  br label %188

185:                                              ; preds = %171
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @Free(i32* %186)
  br label %188

188:                                              ; preds = %185, %174
  br label %189

189:                                              ; preds = %188, %86
  br label %190

190:                                              ; preds = %189, %82
  br label %191

191:                                              ; preds = %190, %78
  br label %192

192:                                              ; preds = %191, %70, %63
  br label %193

193:                                              ; preds = %192, %57
  br label %194

194:                                              ; preds = %193, %32
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = call i32 @FreeBlock(%struct.TYPE_20__* %195)
  br label %26

197:                                              ; preds = %31
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %199 = call i32 @IPCProcessInterrupts(%struct.TYPE_18__* %198)
  br label %200

200:                                              ; preds = %197, %16
  ret void
}

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @IPCFlushArpTableEx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @IPCRecvL2(%struct.TYPE_18__*) #1

declare dso_local i64 @READ_USHORT(i32*) #1

declare dso_local i64 @Cmp(i32*, i32, i32) #1

declare dso_local i64 @IsValidUnicastMacAddress(i32*) #1

declare dso_local i32 @IPCProcessArp(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32* @Clone(i32*, i32) #1

declare dso_local i32 @UINTToIP(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @CmpIpAddr(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @IsZeroIP(%struct.TYPE_19__*) #1

declare dso_local i32 @IPCAssociateOnArpTable(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @InsertQueue(i32, i32) #1

declare dso_local i32 @NewBlock(i32*, i32, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_20__*) #1

declare dso_local i32 @IPCProcessInterrupts(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
