; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualIpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualIpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@MAC_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualIpReceived(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  br label %224

23:                                               ; preds = %19
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IsMacAddressLocalFast(i32 %35)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_16__* %41)
  %43 = mul nsw i32 %42, 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = call i32 @IpCheckChecksum(%struct.TYPE_16__* %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %224

49:                                               ; preds = %37
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %6, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ArpIpWasKnown(i32* %59, i32 %65, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Endian16(i32 %72)
  store i32 %73, i32* %14, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %49
  br label %224

78:                                               ; preds = %49
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @MAC_HEADER_SIZE, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %84, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %224

93:                                               ; preds = %78
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = call i32 @IPV4_GET_OFFSET(%struct.TYPE_16__* %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %131

97:                                               ; preds = %93
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_16__* %98)
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = bitcast %struct.TYPE_16__* %106 to i32*
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @IpReceived(i32* %108, i32 %111, i32 %114, i32 %117, i8* %118, i32 %119, i32 %122, i32 %125, i32* %126, i32 %127, i32 %128, i32 %129)
  br label %224

131:                                              ; preds = %97, %93
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = call i32 @IPV4_GET_OFFSET(%struct.TYPE_16__* %132)
  %134 = mul nsw i32 %133, 8
  store i32 %134, i32* %15, align 4
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @Endian16(i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_15__* @SearchIpCombine(i32* %135, i32 %138, i32 %141, i32 %145, i32 %148)
  store %struct.TYPE_15__* %149, %struct.TYPE_15__** %16, align 8
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %131
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = bitcast %struct.TYPE_16__* %156 to i32*
  store i32* %157, i32** %11, align 8
  br label %158

158:                                              ; preds = %152, %131
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %160 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_16__* %159)
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 1, i32 0
  store i32 %164, i32* %10, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %166 = icmp ne %struct.TYPE_15__* %165, null
  br i1 %166, label %167, label %184

167:                                              ; preds = %158
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @MAX(i32 %170, i32 %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %3, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %177 = load i32, i32* %15, align 4
  %178 = load i8*, i8** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @CombineIp(i32* %175, %struct.TYPE_15__* %176, i32 %177, i8* %178, i32 %179, i32 %180, i32* %181, i32 %182)
  br label %223

184:                                              ; preds = %158
  %185 = load i32*, i32** %3, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @Endian16(i32 %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %13, align 4
  %206 = call %struct.TYPE_15__* @InsertIpCombine(i32* %185, i32 %188, i32 %191, i32 %195, i32 %198, i32 %201, i32 %204, i32 %205)
  store %struct.TYPE_15__* %206, %struct.TYPE_15__** %16, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %208 = icmp ne %struct.TYPE_15__* %207, null
  br i1 %208, label %209, label %222

209:                                              ; preds = %184
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32*, i32** %3, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %215 = load i32, i32* %15, align 4
  %216 = load i8*, i8** %6, align 8
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @CombineIp(i32* %213, %struct.TYPE_15__* %214, i32 %215, i8* %216, i32 %217, i32 %218, i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %209, %184
  br label %223

223:                                              ; preds = %222, %167
  br label %224

224:                                              ; preds = %22, %48, %77, %92, %223, %102
  ret void
}

declare dso_local i32 @IsMacAddressLocalFast(i32) #1

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_16__*) #1

declare dso_local i32 @IpCheckChecksum(%struct.TYPE_16__*) #1

declare dso_local i32 @ArpIpWasKnown(i32*, i32, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @IPV4_GET_OFFSET(%struct.TYPE_16__*) #1

declare dso_local i32 @IPV4_GET_FLAGS(%struct.TYPE_16__*) #1

declare dso_local i32 @IpReceived(i32*, i32, i32, i32, i8*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @SearchIpCombine(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @CombineIp(i32*, %struct.TYPE_15__*, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @InsertIpCombine(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
