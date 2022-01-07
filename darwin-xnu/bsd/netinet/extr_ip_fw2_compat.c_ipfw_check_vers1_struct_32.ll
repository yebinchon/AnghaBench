; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_check_vers1_struct_32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_check_vers1_struct_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_compat_32 = type { i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@IP_FW_F_MASK_COMPAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_FW_F_CHECK_S_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_IN_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_OUT_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_IIFNAME_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_OIFNAME_COMPAT = common dso_local global i32 0, align 4
@IF_FW_F_VIAHACK_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_OIFACE_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_SRNG_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_DRNG_COMPAT = common dso_local global i32 0, align 4
@IP_FW_MAX_PORTS_COMPAT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IP_FW_F_FRAG_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_COMMAND_COMPAT = common dso_local global i32 0, align 4
@IP_FW_REJECT_RST_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_compat_32*)* @ipfw_check_vers1_struct_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_check_vers1_struct_32(%struct.ip_fw_compat_32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_fw_compat_32*, align 8
  store %struct.ip_fw_compat_32* %0, %struct.ip_fw_compat_32** %3, align 8
  %4 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %5 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IP_FW_F_MASK_COMPAT, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %254

13:                                               ; preds = %1
  %14 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %15 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IP_FW_F_CHECK_S_COMPAT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %254

20:                                               ; preds = %13
  %21 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %22 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IP_FW_F_IN_COMPAT, align 4
  %25 = load i32, i32* @IP_FW_F_OUT_COMPAT, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %254

31:                                               ; preds = %20
  %32 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %33 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IP_FW_F_IIFNAME_COMPAT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %40 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %39, i32 0, i32 12
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %38, %31
  %47 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %48 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IP_FW_F_OIFNAME_COMPAT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %55 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %54, i32 0, i32 11
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53, %38
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %2, align 4
  br label %254

63:                                               ; preds = %53, %46
  %64 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %65 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IF_FW_F_VIAHACK_COMPAT, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @IF_FW_F_VIAHACK_COMPAT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %89

72:                                               ; preds = %63
  %73 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %74 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IP_FW_F_IN_COMPAT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %81 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IP_FW_F_OIFACE_COMPAT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %2, align 4
  br label %254

88:                                               ; preds = %79, %72
  br label %89

89:                                               ; preds = %88, %71
  %90 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %91 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IP_FW_F_SRNG_COMPAT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %98 = call i32 @IP_FW_GETNSRCP_COMPAT(%struct.ip_fw_compat_32* %97)
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %2, align 4
  br label %254

102:                                              ; preds = %96, %89
  %103 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %104 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IP_FW_F_DRNG_COMPAT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %111 = call i32 @IP_FW_GETNDSTP_COMPAT(%struct.ip_fw_compat_32* %110)
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %2, align 4
  br label %254

115:                                              ; preds = %109, %102
  %116 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %117 = call i32 @IP_FW_GETNSRCP_COMPAT(%struct.ip_fw_compat_32* %116)
  %118 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %119 = call i32 @IP_FW_GETNDSTP_COMPAT(%struct.ip_fw_compat_32* %118)
  %120 = add nsw i32 %117, %119
  %121 = load i32, i32* @IP_FW_MAX_PORTS_COMPAT, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %2, align 4
  br label %254

125:                                              ; preds = %115
  %126 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %127 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IPPROTO_TCP, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %125
  %132 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %133 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IPPROTO_UDP, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %139 = call i32 @IP_FW_GETNSRCP_COMPAT(%struct.ip_fw_compat_32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %143 = call i32 @IP_FW_GETNDSTP_COMPAT(%struct.ip_fw_compat_32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %137
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %2, align 4
  br label %254

147:                                              ; preds = %141, %131, %125
  %148 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %149 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %148, i32 0, i32 10
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %153 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = xor i32 %155, -1
  %157 = and i32 %151, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %147
  %160 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %161 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %165 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = xor i32 %167, -1
  %169 = and i32 %163, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %159, %147
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %2, align 4
  br label %254

173:                                              ; preds = %159
  %174 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %175 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IP_FW_F_FRAG_COMPAT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %216

180:                                              ; preds = %173
  %181 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %182 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @IPPROTO_UDP, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %188 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @IPPROTO_TCP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %216

192:                                              ; preds = %186, %180
  %193 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %194 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @EINVAL, align 4
  store i32 %198, i32* %2, align 4
  br label %254

199:                                              ; preds = %192
  %200 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %201 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @IPPROTO_TCP, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %207 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %210 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %208, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = load i32, i32* @EINVAL, align 4
  store i32 %214, i32* %2, align 4
  br label %254

215:                                              ; preds = %205, %199
  br label %216

216:                                              ; preds = %215, %186, %173
  %217 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %218 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IP_FW_F_COMMAND_COMPAT, align 4
  %221 = and i32 %219, %220
  switch i32 %221, label %251 [
    i32 131, label %222
    i32 135, label %242
    i32 129, label %242
    i32 133, label %242
    i32 132, label %242
    i32 136, label %250
    i32 138, label %250
    i32 137, label %250
    i32 130, label %250
    i32 134, label %250
    i32 128, label %250
  ]

222:                                              ; preds = %216
  %223 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %224 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = icmp sge i32 %225, 256
  br i1 %226, label %227, label %241

227:                                              ; preds = %222
  %228 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %229 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @IPPROTO_TCP, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %235 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @IP_FW_REJECT_RST_COMPAT, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %241, label %239

239:                                              ; preds = %233, %227
  %240 = load i32, i32* @EINVAL, align 4
  store i32 %240, i32* %2, align 4
  br label %254

241:                                              ; preds = %233, %222
  br label %253

242:                                              ; preds = %216, %216, %216, %216
  %243 = load %struct.ip_fw_compat_32*, %struct.ip_fw_compat_32** %3, align 8
  %244 = getelementptr inbounds %struct.ip_fw_compat_32, %struct.ip_fw_compat_32* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, i32* @EINVAL, align 4
  store i32 %248, i32* %2, align 4
  br label %254

249:                                              ; preds = %242
  br label %253

250:                                              ; preds = %216, %216, %216, %216, %216, %216
  br label %253

251:                                              ; preds = %216
  %252 = load i32, i32* @EINVAL, align 4
  store i32 %252, i32* %2, align 4
  br label %254

253:                                              ; preds = %250, %249, %241
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %253, %251, %247, %239, %213, %197, %171, %145, %123, %113, %100, %86, %61, %29, %19, %11
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @IP_FW_GETNSRCP_COMPAT(%struct.ip_fw_compat_32*) #1

declare dso_local i32 @IP_FW_GETNDSTP_COMPAT(%struct.ip_fw_compat_32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
