; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDHCPv4Data.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDHCPv4Data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__*, %struct.TYPE_16__*, i32*, i32, i32*, i8*, i8*, i32, i32, i32* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i32, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64 }

@DHCP_MAGIC_COOKIE = common dso_local global i32 0, align 4
@L3_IPV4 = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@L7_DHCPV4 = common dso_local global i64 0, align 8
@DHCP_ID_MESSAGE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @ParseDHCPv4Data(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %10 = load i32, i32* @DHCP_MAGIC_COOKIE, align 4
  %11 = call i32 @Endian32(i32 %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = icmp eq %struct.TYPE_22__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %227

15:                                               ; preds = %1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @L3_IPV4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @L4_UDP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @L7_DHCPV4, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %15
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %227

34:                                               ; preds = %27
  %35 = call %struct.TYPE_25__* @ZeroMalloc(i32 80)
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %4, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = ptrtoint i32* %44 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = sub nsw i64 %39, %52
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @Clone(i64 %60, i32 %63)
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 11
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 16
  br i1 %71, label %72, label %73

72:                                               ; preds = %34
  br label %224

73:                                               ; preds = %34
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 11
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_24__*
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  store %struct.TYPE_24__* %77, %struct.TYPE_24__** %79, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %5, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %98, %73
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 5
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = call i64 @Cmp(i32* %90, i32* %7, i32 4)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 4
  store i32 %97, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %103

98:                                               ; preds = %89
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %6, align 4
  br label %86

103:                                              ; preds = %93, %86
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %224

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32* @ParseDhcpOptions(i32* %114, i32 %115)
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 6
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  br label %224

124:                                              ; preds = %107
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 10
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @UINTToIP(i32* %126, i32 %132)
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 9
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @UINTToIP(i32* %135, i32 %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @Endian16(i32 %148)
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 8
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @Endian16(i32 %157)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 7
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @DHCP_ID_MESSAGE_TYPE, align 4
  %165 = call %struct.TYPE_23__* @GetDhcpOption(i32* %163, i32 %164)
  store %struct.TYPE_23__* %165, %struct.TYPE_23__** %9, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %167 = icmp eq %struct.TYPE_23__* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %124
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %124
  br label %224

174:                                              ; preds = %168
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call %struct.TYPE_16__* @ParseDhcpOptionList(i32* %184, i32 %187)
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 3
  store %struct.TYPE_16__* %188, %struct.TYPE_16__** %190, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = icmp eq %struct.TYPE_16__* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %174
  br label %224

196:                                              ; preds = %174
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %196
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  store i64 %208, i64* %212, align 8
  br label %213

213:                                              ; preds = %203, %196
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 8
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %223, %struct.TYPE_25__** %2, align 8
  br label %227

224:                                              ; preds = %195, %173, %123, %106, %72
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %226 = call i32 @FreeDHCPv4Data(%struct.TYPE_25__* %225)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %227

227:                                              ; preds = %224, %213, %33, %14
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  ret %struct.TYPE_25__* %228
}

declare dso_local i32 @Endian32(i32) #1

declare dso_local %struct.TYPE_25__* @ZeroMalloc(i32) #1

declare dso_local i32* @Clone(i64, i32) #1

declare dso_local i64 @Cmp(i32*, i32*, i32) #1

declare dso_local i32* @ParseDhcpOptions(i32*, i32) #1

declare dso_local i32 @UINTToIP(i32*, i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local %struct.TYPE_23__* @GetDhcpOption(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @ParseDhcpOptionList(i32*, i32) #1

declare dso_local i32 @FreeDHCPv4Data(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
