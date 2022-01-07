; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatIcmpThreadProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatIcmpThreadProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_23__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32* }
%struct.TYPE_24__ = type { i32, i32, i64, i64, i32, %struct.TYPE_23__*, i64, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@ICMP_TYPE_ECHO_REQUEST = common dso_local global i64 0, align 8
@NAT_ICMP_TIMEOUT_WITH_API = common dso_local global i32 0, align 4
@IP_PROTO_ICMPV4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NatIcmpThreadProc(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  br label %225

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %5, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = icmp ne %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %95

33:                                               ; preds = %26
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 128
  br i1 %46, label %47, label %94

47:                                               ; preds = %33
  %48 = load i32*, i32** %9, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %11, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 64
  %52 = bitcast i32* %51 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %12, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %47
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 64
  %66 = getelementptr inbounds i32, i32* %65, i64 64
  store i32* %66, i32** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 64
  %70 = sub i64 %69, 64
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @Endian16(i8* %74)
  store i8* %75, i8** %7, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @Endian16(i8* %78)
  store i8* %79, i8** %8, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @UINTToIP(i32* %15, i32 %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @NAT_ICMP_TIMEOUT_WITH_API, align 4
  %92 = call %struct.TYPE_24__* @IcmpApiEchoSend(i32* %15, i32 %88, i32* %89, i32 %90, i32 %91)
  store %struct.TYPE_24__* %92, %struct.TYPE_24__** %6, align 8
  br label %93

93:                                               ; preds = %63, %58, %47
  br label %94

94:                                               ; preds = %93, %33
  br label %95

95:                                               ; preds = %94, %26
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = icmp ne %struct.TYPE_24__* %96, null
  br i1 %97, label %98, label %214

98:                                               ; preds = %95
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %214

103:                                              ; preds = %98
  %104 = call %struct.TYPE_25__* (...) @NewBuf()
  store %struct.TYPE_25__* %104, %struct.TYPE_25__** %19, align 8
  %105 = call i32 @Zero(%struct.TYPE_23__* %16, i32 64)
  %106 = call i32 @IPV4_SET_VERSION(%struct.TYPE_23__* %16, i32 4)
  %107 = call i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_23__* %16, i32 16)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 8
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 7
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 7
  %116 = call i32 @IPToUINT(i32* %115)
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 6
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  store i32 16843009, i32* %118, align 8
  %119 = call i32 @Zero(%struct.TYPE_23__* %17, i32 64)
  %120 = call i32 @Zero(%struct.TYPE_23__* %18, i32 64)
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %103
  %126 = load i8*, i8** %7, align 8
  %127 = call i8* @Endian16(i8* %126)
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 5
  store i8* %127, i8** %128, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i8* @Endian16(i8* %129)
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 4
  store i8* %130, i8** %131, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 192, %135
  %137 = inttoptr i64 %136 to i8*
  %138 = call i8* @Endian16(i8* %137)
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 3
  store i8* %138, i8** %139, align 8
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %141 = call i32 @WriteBuf(%struct.TYPE_25__* %140, %struct.TYPE_23__* %16, i32 64)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %143 = call i32 @WriteBuf(%struct.TYPE_25__* %142, %struct.TYPE_23__* %17, i32 64)
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %145 = call i32 @WriteBuf(%struct.TYPE_25__* %144, %struct.TYPE_23__* %18, i32 64)
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @WriteBuf(%struct.TYPE_25__* %146, %struct.TYPE_23__* %149, i32 %152)
  br label %191

154:                                              ; preds = %103
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store i64 %157, i64* %158, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i8* @Endian16(i8* %163)
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 5
  store i8* %164, i8** %165, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = call i8* @Endian16(i8* %166)
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 4
  store i8* %167, i8** %168, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = add i64 192, %172
  %174 = inttoptr i64 %173 to i8*
  %175 = call i8* @Endian16(i8* %174)
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 3
  store i8* %175, i8** %176, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %178 = call i32 @WriteBuf(%struct.TYPE_25__* %177, %struct.TYPE_23__* %16, i32 64)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %180 = call i32 @WriteBuf(%struct.TYPE_25__* %179, %struct.TYPE_23__* %17, i32 64)
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %182 = call i32 @WriteBuf(%struct.TYPE_25__* %181, %struct.TYPE_23__* %18, i32 64)
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @WriteBuf(%struct.TYPE_25__* %183, %struct.TYPE_23__* %186, i32 %189)
  br label %191

191:                                              ; preds = %154, %125
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @Clone(i32 %194, i32 %197)
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call %struct.TYPE_19__* @NewBlock(i32 %198, i32 %201, i32 0)
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 3
  store %struct.TYPE_19__* %202, %struct.TYPE_19__** %204, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %213 = call i32 @FreeBuf(%struct.TYPE_25__* %212)
  br label %214

214:                                              ; preds = %191, %98, %95
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %216 = call i32 @IcmpApiFreeResult(%struct.TYPE_24__* %215)
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @SetSockEvent(i32 %223)
  br label %225

225:                                              ; preds = %214, %25
  ret void
}

declare dso_local i8* @Endian16(i8*) #1

declare dso_local i32 @UINTToIP(i32*, i32) #1

declare dso_local %struct.TYPE_24__* @IcmpApiEchoSend(i32*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @NewBuf(...) #1

declare dso_local i32 @Zero(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @IPV4_SET_VERSION(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_19__* @NewBlock(i32, i32, i32) #1

declare dso_local i32 @Clone(i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_25__*) #1

declare dso_local i32 @IcmpApiFreeResult(%struct.TYPE_24__*) #1

declare dso_local i32 @SetSockEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
