; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_state_compare_ext_gwy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_state_compare_ext_gwy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state_key = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@PF_EXTFILTER_APD = common dso_local global i32 0, align 4
@PF_EXTFILTER_AD = common dso_local global i32 0, align 4
@PF_GRE_PPTP_VARIANT = common dso_local global i32 0, align 4
@PF_EXTFILTER_EI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state_key*, %struct.pf_state_key*)* @pf_state_compare_ext_gwy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_state_compare_ext_gwy(%struct.pf_state_key* %0, %struct.pf_state_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_state_key*, align 8
  %5 = alloca %struct.pf_state_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pf_state_key* %0, %struct.pf_state_key** %4, align 8
  store %struct.pf_state_key* %1, %struct.pf_state_key** %5, align 8
  %8 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %9 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %12 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %247

18:                                               ; preds = %2
  %19 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %20 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %23 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %247

29:                                               ; preds = %18
  %30 = load i32, i32* @PF_EXTFILTER_APD, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %32 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %177 [
    i32 131, label %34
    i32 130, label %34
    i32 129, label %50
    i32 128, label %81
    i32 132, label %130
    i32 133, label %161
  ]

34:                                               ; preds = %29, %29
  %35 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %36 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %41 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %39, %44
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %247

49:                                               ; preds = %34
  br label %178

50:                                               ; preds = %29
  %51 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %52 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %57 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %55, %60
  store i32 %61, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %247

65:                                               ; preds = %50
  %66 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %67 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %72 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %70, %75
  store i32 %76, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %247

80:                                               ; preds = %65
  br label %178

81:                                               ; preds = %29
  %82 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %83 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %86 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %84, %87
  store i32 %88, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %247

92:                                               ; preds = %81
  %93 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %94 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %7, align 4
  %96 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %97 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %102 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %100, %105
  store i32 %106, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %247

110:                                              ; preds = %92
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @PF_EXTFILTER_AD, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %116 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %121 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %119, %124
  store i32 %125, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %247

129:                                              ; preds = %114, %110
  br label %178

130:                                              ; preds = %29
  %131 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %132 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PF_GRE_PPTP_VARIANT, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %130
  %137 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %138 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %141 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %136
  %145 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %146 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %151 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %149, %154
  store i32 %155, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %144
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %3, align 4
  br label %247

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %136, %130
  br label %178

161:                                              ; preds = %29
  %162 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %163 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %168 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %166, %171
  store i32 %172, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %161
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %247

176:                                              ; preds = %161
  br label %178

177:                                              ; preds = %29
  br label %178

178:                                              ; preds = %177, %176, %160, %129, %80, %49
  %179 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %180 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %182 [
  ]

182:                                              ; preds = %178
  %183 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %184 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %183, i32 0, i32 3
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = icmp ne %struct.TYPE_11__* %185, null
  br i1 %186, label %187, label %246

187:                                              ; preds = %182
  %188 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %189 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %188, i32 0, i32 3
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = icmp ne %struct.TYPE_11__* %190, null
  br i1 %191, label %192, label %246

192:                                              ; preds = %187
  %193 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %194 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %193, i32 0, i32 3
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)** %196, align 8
  %198 = icmp ne i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* %197, null
  br i1 %198, label %199, label %245

199:                                              ; preds = %192
  %200 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %201 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %200, i32 0, i32 3
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)** %203, align 8
  %205 = icmp ne i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* %204, null
  br i1 %205, label %206, label %245

206:                                              ; preds = %199
  %207 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %208 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %207, i32 0, i32 3
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)** %210, align 8
  %212 = bitcast i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* %211 to i8*
  %213 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %214 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %213, i32 0, i32 3
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)** %216, align 8
  %218 = bitcast i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* %217 to i8*
  %219 = ptrtoint i8* %212 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %206
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %3, align 4
  br label %247

227:                                              ; preds = %206
  %228 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %229 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %228, i32 0, i32 3
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)** %231, align 8
  %233 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %234 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %233, i32 0, i32 3
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %237 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %236, i32 0, i32 3
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = call i32 %232(%struct.TYPE_11__* %235, %struct.TYPE_11__* %238)
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %227
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %3, align 4
  br label %247

244:                                              ; preds = %227
  br label %245

245:                                              ; preds = %244, %199, %192
  br label %246

246:                                              ; preds = %245, %187, %182
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %242, %225, %174, %157, %127, %108, %90, %78, %63, %47, %27, %16
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
