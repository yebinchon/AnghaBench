; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseICMPv6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseICMPv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__, i32, i32*, i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i64, i32*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i32, i32 }

@L4_ICMPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseICMPv6(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %193

18:                                               ; preds = %14
  %19 = call i32 @Zero(%struct.TYPE_17__* %8, i32 104)
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %193

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 8
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  store i32* %44, i32** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %186 [
    i32 133, label %50
    i32 132, label %50
    i32 128, label %82
    i32 129, label %108
    i32 130, label %134
    i32 131, label %160
  ]

50:                                               ; preds = %24, %24
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 8
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %193

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %10, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @Endian16(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @Endian16(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = bitcast %struct.TYPE_16__* %72 to i32*
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 6
  store i32* %74, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  br label %186

82:                                               ; preds = %24
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 4
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %193

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  store i32* %90, i32** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @ParseICMPv6Options(i32* %93, i32* %98, i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %193

107:                                              ; preds = %88
  br label %186

108:                                              ; preds = %24
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %193

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  store i32* %116, i32** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @ParseICMPv6Options(i32* %119, i32* %124, i32 %129)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %193

133:                                              ; preds = %114
  br label %186

134:                                              ; preds = %24
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp ult i64 %137, 4
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %193

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  store i32* %142, i32** %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = call i32 @ParseICMPv6Options(i32* %145, i32* %150, i32 %155)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %193

159:                                              ; preds = %140
  br label %186

160:                                              ; preds = %24
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ult i64 %163, 4
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %193

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 %179, 4
  %181 = trunc i64 %180 to i32
  %182 = call i32 @ParseICMPv6Options(i32* %171, i32* %176, i32 %181)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %193

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %24, %185, %159, %133, %107, %56
  %187 = load i32, i32* @L4_ICMPV6, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = call i32 @Copy(i32* %191, %struct.TYPE_17__* %8, i32 104)
  store i32 1, i32* %4, align 4
  br label %193

193:                                              ; preds = %186, %184, %165, %158, %139, %132, %113, %106, %87, %55, %23, %17
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @ParseICMPv6Options(i32*, i32*, i32) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
