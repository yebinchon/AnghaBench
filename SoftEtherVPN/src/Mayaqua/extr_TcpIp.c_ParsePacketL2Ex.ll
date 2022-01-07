; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParsePacketL2Ex.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParsePacketL2Ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32*, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@LLC_DSAP_BPDU = common dso_local global i64 0, align 8
@LLC_SSAP_BPDU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParsePacketL2Ex(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %209

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %209

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_11__*
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 24
  store i32* %33, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 24
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %82, %27
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 255
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %43
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 255
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %40

85:                                               ; preds = %40
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @memcmp(i32* %96, i32* %101, i32 6)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %91, %88, %85
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %110

107:                                              ; preds = %91
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %110
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @Endian16(i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp sgt i32 %130, 1500
  br i1 %131, label %132, label %173

132:                                              ; preds = %123
  %133 = load i32, i32* %13, align 4
  switch i32 %133, label %161 [
    i32 130, label %134
    i32 129, label %143
    i32 128, label %152
  ]

134:                                              ; preds = %132
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %5, align 4
  br label %209

138:                                              ; preds = %134
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @ParsePacketARPv4(%struct.TYPE_10__* %139, i32* %140, i32 %141)
  store i32 %142, i32* %5, align 4
  br label %209

143:                                              ; preds = %132
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, i32* %5, align 4
  br label %209

147:                                              ; preds = %143
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @ParsePacketIPv4(%struct.TYPE_10__* %148, i32* %149, i32 %150)
  store i32 %151, i32* %5, align 4
  br label %209

152:                                              ; preds = %132
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 1, i32* %5, align 4
  br label %209

156:                                              ; preds = %152
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @ParsePacketIPv6(%struct.TYPE_10__* %157, i32* %158, i32 %159)
  store i32 %160, i32* %5, align 4
  br label %209

161:                                              ; preds = %132
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @ParsePacketTAGVLAN(%struct.TYPE_10__* %168, i32* %169, i32 %170)
  store i32 %171, i32* %5, align 4
  br label %209

172:                                              ; preds = %161
  store i32 1, i32* %5, align 4
  br label %209

173:                                              ; preds = %123
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ult i64 %180, 16
  br i1 %181, label %182, label %183

182:                                              ; preds = %178, %173
  store i32 1, i32* %5, align 4
  br label %209

183:                                              ; preds = %178
  %184 = load i32*, i32** %7, align 8
  %185 = bitcast i32* %184 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %15, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 16
  store i32* %187, i32** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = sub i64 %189, 16
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %8, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @LLC_DSAP_BPDU, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %183
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @LLC_SSAP_BPDU, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @ParsePacketBPDU(%struct.TYPE_10__* %204, i32* %205, i32 %206)
  store i32 %207, i32* %5, align 4
  br label %209

208:                                              ; preds = %197, %183
  store i32 1, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %203, %182, %172, %167, %156, %155, %147, %146, %138, %137, %26, %21
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @ParsePacketARPv4(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ParsePacketIPv4(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ParsePacketIPv6(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ParsePacketTAGVLAN(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ParsePacketBPDU(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
