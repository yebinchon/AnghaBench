; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsParsePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsParsePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8* }

@OPENVPN_P_DATA_V1 = common dso_local global i32 0, align 4
@OPENVPN_P_ACK_V1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @OvsParsePacket(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %176

16:                                               ; preds = %12
  %17 = call %struct.TYPE_5__* @ZeroMalloc(i32 56)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 248
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 31
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OPENVPN_P_DATA_V1, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %16
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @Clone(i32* %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %3, align 8
  br label %176

49:                                               ; preds = %16
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %173

54:                                               ; preds = %49
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @READ_UINT64(i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %173

68:                                               ; preds = %54
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 4
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %173

83:                                               ; preds = %68
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %137

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = add i64 %95, 4
  %97 = icmp ult i64 %90, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %173

99:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %123, %99
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %100
  %107 = load i32*, i32** %4, align 8
  %108 = call i8* @READ_UINT(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  store i32* %118, i32** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %106
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %100

126:                                              ; preds = %100
  %127 = load i32*, i32** %4, align 8
  %128 = call i8* @READ_UINT64(i32* %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %126, %83
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @OPENVPN_P_ACK_V1, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %137
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %145, 4
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %173

148:                                              ; preds = %143
  %149 = load i32*, i32** %4, align 8
  %150 = call i8* @READ_UINT(i32* %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32* %154, i32** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 4
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %5, align 4
  %163 = icmp sge i32 %162, 1
  br i1 %163, label %164, label %170

164:                                              ; preds = %148
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i8* @Clone(i32* %165, i32 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %164, %148
  br label %171

171:                                              ; preds = %170, %137
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %172, %struct.TYPE_5__** %3, align 8
  br label %176

173:                                              ; preds = %147, %98, %82, %67, %53
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = call i32 @OvsFreePacket(%struct.TYPE_5__* %174)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %176

176:                                              ; preds = %173, %171, %39, %15
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %177
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i8* @Clone(i32*, i32) #1

declare dso_local i8* @READ_UINT64(i32*) #1

declare dso_local i8* @READ_UINT(i32*) #1

declare dso_local i32 @OvsFreePacket(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
