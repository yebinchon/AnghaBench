; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseUDP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseUDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@L4_UDP = common dso_local global i32 0, align 4
@L3_IPV4 = common dso_local global i64 0, align 8
@IKE_EXCHANGE_TYPE_MAIN = common dso_local global i64 0, align 8
@IKE_EXCHANGE_TYPE_AGGRESSIVE = common dso_local global i64 0, align 8
@L7_IKECONN = common dso_local global i32 0, align 4
@L7_OPENVPNCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseUDP(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %168

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %168

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_11__*
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %27, align 8
  %28 = load i32, i32* @L4_UDP, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @Endian16(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @Endian16(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 67
  br i1 %58, label %59, label %62

59:                                               ; preds = %22
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 68
  br i1 %61, label %68, label %62

62:                                               ; preds = %59, %22
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 68
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 67
  br i1 %67, label %68, label %80

68:                                               ; preds = %65, %59
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @L3_IPV4, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ParseDHCPv4(%struct.TYPE_12__* %75, i32* %76, i32 %77)
  store i32 1, i32* %4, align 4
  br label %168

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %65, %62
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 53
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ParseDNS(%struct.TYPE_12__* %84, i32* %85, i32 %86)
  store i32 1, i32* %4, align 4
  br label %168

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 500
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 500
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 4500
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 4500
  br i1 %99, label %100, label %142

100:                                              ; preds = %97, %94, %91, %88
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = icmp uge i64 %104, 24
  br i1 %105, label %106, label %141

106:                                              ; preds = %100
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = bitcast i32* %109 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %10, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %106
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IKE_EXCHANGE_TYPE_MAIN, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IKE_EXCHANGE_TYPE_AGGRESSIVE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126, %120
  %133 = load i32, i32* @L7_IKECONN, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %139, align 8
  store i32 1, i32* %4, align 4
  br label %168

140:                                              ; preds = %126, %115, %106
  br label %141

141:                                              ; preds = %140, %100
  br label %142

142:                                              ; preds = %141, %97
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 14
  br i1 %144, label %145, label %167

145:                                              ; preds = %142
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 56
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 9
  %153 = call i32 @IsZero(i32* %152, i32 5)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = call i32 @IsZero(i32* %157, i32 8)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @L7_OPENVPNCONN, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  store i32 1, i32* %4, align 4
  br label %168

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %150
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %142
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %160, %132, %83, %74, %21, %16
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @ParseDHCPv4(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ParseDNS(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @IsZero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
