; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcpstats_session_wrapup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcpstats_session_wrapup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mptses = type { i32, i32, i64, i64, i64, i32, i64 }

@MPTE_FIRSTPARTY = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptses*)* @mptcpstats_session_wrapup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcpstats_session_wrapup(%struct.mptses* %0) #0 {
  %2 = alloca %struct.mptses*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mptses* %0, %struct.mptses** %2, align 8
  %10 = load %struct.mptses*, %struct.mptses** %2, align 8
  %11 = getelementptr inbounds %struct.mptses, %struct.mptses* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.mptses*, %struct.mptses** %2, align 8
  %14 = getelementptr inbounds %struct.mptses, %struct.mptses* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %229 [
    i32 129, label %16
    i32 128, label %117
    i32 130, label %184
  ]

16:                                               ; preds = %1
  %17 = load %struct.mptses*, %struct.mptses** %2, align 8
  %18 = getelementptr inbounds %struct.mptses, %struct.mptses* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MPTE_FIRSTPARTY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 24), align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 24), align 4
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.mptses*, %struct.mptses** %2, align 8
  %30 = getelementptr inbounds %struct.mptses, %struct.mptses* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 23), align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 23), align 4
  %36 = load %struct.mptses*, %struct.mptses** %2, align 8
  %37 = getelementptr inbounds %struct.mptses, %struct.mptses* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 19), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 19), align 4
  br label %43

43:                                               ; preds = %40, %33
  br label %61

44:                                               ; preds = %28, %23
  %45 = load %struct.mptses*, %struct.mptses** %2, align 8
  %46 = getelementptr inbounds %struct.mptses, %struct.mptses* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 22), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 22), align 4
  %52 = load %struct.mptses*, %struct.mptses** %2, align 8
  %53 = getelementptr inbounds %struct.mptses, %struct.mptses* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 17), align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 17), align 4
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %43
  br label %101

62:                                               ; preds = %16
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 21), align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 21), align 4
  %65 = load i64, i64* %3, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.mptses*, %struct.mptses** %2, align 8
  %69 = getelementptr inbounds %struct.mptses, %struct.mptses* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 20), align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 20), align 4
  %75 = load %struct.mptses*, %struct.mptses** %2, align 8
  %76 = getelementptr inbounds %struct.mptses, %struct.mptses* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 19), align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 19), align 4
  br label %82

82:                                               ; preds = %79, %72
  br label %100

83:                                               ; preds = %67, %62
  %84 = load %struct.mptses*, %struct.mptses** %2, align 8
  %85 = getelementptr inbounds %struct.mptses, %struct.mptses* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 18), align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 18), align 4
  %91 = load %struct.mptses*, %struct.mptses** %2, align 8
  %92 = getelementptr inbounds %struct.mptses, %struct.mptses* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 17), align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 17), align 4
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %61
  %102 = load %struct.mptses*, %struct.mptses** %2, align 8
  %103 = getelementptr inbounds %struct.mptses, %struct.mptses* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.mptses*, %struct.mptses** %2, align 8
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @mptcpstats_get_bytes(%struct.mptses* %107, i64 %108, i32* %4, i32* %5)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 16), align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 16), align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 15), align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 15), align 4
  br label %116

116:                                              ; preds = %106, %101
  br label %229

117:                                              ; preds = %1
  %118 = load %struct.mptses*, %struct.mptses** %2, align 8
  %119 = getelementptr inbounds %struct.mptses, %struct.mptses* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MPTE_FIRSTPARTY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %117
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 14), align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 14), align 4
  %127 = load %struct.mptses*, %struct.mptses** %2, align 8
  %128 = getelementptr inbounds %struct.mptses, %struct.mptses* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %124
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 13), align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 13), align 4
  %134 = load i64, i64* %3, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load %struct.mptses*, %struct.mptses** %2, align 8
  %138 = getelementptr inbounds %struct.mptses, %struct.mptses* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 10), align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 10), align 4
  br label %144

144:                                              ; preds = %141, %136, %131
  br label %145

145:                                              ; preds = %144, %124
  br label %168

146:                                              ; preds = %117
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 12), align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 12), align 4
  %149 = load %struct.mptses*, %struct.mptses** %2, align 8
  %150 = getelementptr inbounds %struct.mptses, %struct.mptses* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %146
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 11), align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 11), align 4
  %156 = load i64, i64* %3, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  %159 = load %struct.mptses*, %struct.mptses** %2, align 8
  %160 = getelementptr inbounds %struct.mptses, %struct.mptses* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 10), align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 10), align 4
  br label %166

166:                                              ; preds = %163, %158, %153
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %145
  %169 = load %struct.mptses*, %struct.mptses** %2, align 8
  %170 = getelementptr inbounds %struct.mptses, %struct.mptses* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load %struct.mptses*, %struct.mptses** %2, align 8
  %175 = load i64, i64* %3, align 8
  %176 = call i32 @mptcpstats_get_bytes(%struct.mptses* %174, i64 %175, i32* %6, i32* %7)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 9), align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 9), align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 8), align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 8), align 4
  br label %183

183:                                              ; preds = %173, %168
  br label %229

184:                                              ; preds = %1
  %185 = load %struct.mptses*, %struct.mptses** %2, align 8
  %186 = getelementptr inbounds %struct.mptses, %struct.mptses* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @MPTE_FIRSTPARTY, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %184
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 7), align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 7), align 4
  %194 = load %struct.mptses*, %struct.mptses** %2, align 8
  %195 = getelementptr inbounds %struct.mptses, %struct.mptses* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 6), align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 6), align 4
  br label %201

201:                                              ; preds = %198, %191
  br label %213

202:                                              ; preds = %184
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 5), align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 5), align 4
  %205 = load %struct.mptses*, %struct.mptses** %2, align 8
  %206 = getelementptr inbounds %struct.mptses, %struct.mptses* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 4), align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 4), align 4
  br label %212

212:                                              ; preds = %209, %202
  br label %213

213:                                              ; preds = %212, %201
  %214 = load %struct.mptses*, %struct.mptses** %2, align 8
  %215 = getelementptr inbounds %struct.mptses, %struct.mptses* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = load %struct.mptses*, %struct.mptses** %2, align 8
  %220 = load i64, i64* %3, align 8
  %221 = call i32 @mptcpstats_get_bytes(%struct.mptses* %219, i64 %220, i32* %8, i32* %9)
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  br label %228

228:                                              ; preds = %218, %213
  br label %229

229:                                              ; preds = %1, %228, %183, %116
  %230 = load i64, i64* %3, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %229
  %233 = load %struct.mptses*, %struct.mptses** %2, align 8
  %234 = getelementptr inbounds %struct.mptses, %struct.mptses* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load %struct.mptses*, %struct.mptses** %2, align 8
  %239 = getelementptr inbounds %struct.mptses, %struct.mptses* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  br label %245

245:                                              ; preds = %242, %237, %232, %229
  %246 = load %struct.mptses*, %struct.mptses** %2, align 8
  %247 = getelementptr inbounds %struct.mptses, %struct.mptses* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  br label %253

253:                                              ; preds = %250, %245
  ret void
}

declare dso_local i32 @mptcpstats_get_bytes(%struct.mptses*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
