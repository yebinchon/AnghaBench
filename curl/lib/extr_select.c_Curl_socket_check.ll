; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_select.c_Curl_socket_check.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_select.c_Curl_socket_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.curltime = type { i32, i32 }

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i32 0, align 4
@CURL_CSELECT_IN = common dso_local global i32 0, align 4
@CURL_CSELECT_ERR = common dso_local global i32 0, align 4
@CURL_CSELECT_IN2 = common dso_local global i32 0, align 4
@CURL_CSELECT_OUT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_socket_check(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.curltime, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.curltime, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = bitcast %struct.curltime* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  store i32 0, i32* %17, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @Curl_wait_ms(i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %5, align 4
  br label %230

39:                                               ; preds = %30, %26, %4
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = call i64 (...) @Curl_now()
  %46 = bitcast %struct.curltime* %20 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.curltime* %16 to i8*
  %48 = bitcast %struct.curltime* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  br label %49

49:                                               ; preds = %42, %39
  %50 = call i32 @FD_ZERO(%struct.TYPE_8__* %14)
  store i64 -1, i64* %15, align 8
  %51 = call i32 @FD_ZERO(%struct.TYPE_8__* %12)
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @VERIFY_SOCK(i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @FD_SET(i64 %58, %struct.TYPE_8__* %12)
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @FD_SET(i64 %60, %struct.TYPE_8__* %14)
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %15, align 8
  br label %63

63:                                               ; preds = %55, %49
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @VERIFY_SOCK(i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @FD_SET(i64 %70, %struct.TYPE_8__* %12)
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @FD_SET(i64 %72, %struct.TYPE_8__* %14)
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %15, align 8
  br label %79

79:                                               ; preds = %77, %67
  br label %80

80:                                               ; preds = %79, %63
  %81 = call i32 @FD_ZERO(%struct.TYPE_8__* %13)
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @VERIFY_SOCK(i64 %86)
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @FD_SET(i64 %88, %struct.TYPE_8__* %13)
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @FD_SET(i64 %90, %struct.TYPE_8__* %14)
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i64, i64* %8, align 8
  store i64 %96, i64* %15, align 8
  br label %97

97:                                               ; preds = %95, %85
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i64, i64* %9, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %103

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %101
  %104 = phi %struct.timeval* [ null, %101 ], [ %10, %102 ]
  store %struct.timeval* %104, %struct.timeval** %11, align 8
  br label %105

105:                                              ; preds = %154, %103
  %106 = load i64, i64* %9, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = sdiv i32 %109, 1000
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %17, align 4
  %113 = srem i32 %112, 1000
  %114 = mul nsw i32 %113, 1000
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  br label %123

116:                                              ; preds = %105
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i64, i64* %15, align 8
  %125 = trunc i64 %124 to i32
  %126 = add nsw i32 %125, 1
  %127 = load %struct.timeval*, %struct.timeval** %11, align 8
  %128 = call i32 @select(i32 %126, %struct.TYPE_8__* %12, %struct.TYPE_8__* %13, %struct.TYPE_8__* %14, %struct.timeval* %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %157

132:                                              ; preds = %123
  %133 = load i32, i32* @SOCKERRNO, align 4
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %21, align 4
  %138 = call i64 @ERROR_NOT_EINTR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %157

141:                                              ; preds = %136, %132
  %142 = load i64, i64* %9, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i64, i64* %9, align 8
  %146 = call i64 (...) @ELAPSED_MS()
  %147 = sub nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i32 0, i32* %18, align 4
  br label %157

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %141
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %18, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %105, label %157

157:                                              ; preds = %154, %151, %140, %131
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %230

161:                                              ; preds = %157
  %162 = load i32, i32* %18, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %230

165:                                              ; preds = %161
  store i32 0, i32* %19, align 4
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load i64, i64* %6, align 8
  %171 = call i64 @FD_ISSET(i64 %170, %struct.TYPE_8__* %12)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* @CURL_CSELECT_IN, align 4
  %175 = load i32, i32* %19, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %19, align 4
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i64, i64* %6, align 8
  %179 = call i64 @FD_ISSET(i64 %178, %struct.TYPE_8__* %14)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* @CURL_CSELECT_ERR, align 4
  %183 = load i32, i32* %19, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %19, align 4
  br label %185

185:                                              ; preds = %181, %177
  br label %186

186:                                              ; preds = %185, %165
  %187 = load i64, i64* %7, align 8
  %188 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %186
  %191 = load i64, i64* %7, align 8
  %192 = call i64 @FD_ISSET(i64 %191, %struct.TYPE_8__* %12)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32, i32* @CURL_CSELECT_IN2, align 4
  %196 = load i32, i32* %19, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %194, %190
  %199 = load i64, i64* %7, align 8
  %200 = call i64 @FD_ISSET(i64 %199, %struct.TYPE_8__* %14)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* @CURL_CSELECT_ERR, align 4
  %204 = load i32, i32* %19, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %202, %198
  br label %207

207:                                              ; preds = %206, %186
  %208 = load i64, i64* %8, align 8
  %209 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %228

211:                                              ; preds = %207
  %212 = load i64, i64* %8, align 8
  %213 = call i64 @FD_ISSET(i64 %212, %struct.TYPE_8__* %13)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i32, i32* @CURL_CSELECT_OUT, align 4
  %217 = load i32, i32* %19, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %19, align 4
  br label %219

219:                                              ; preds = %215, %211
  %220 = load i64, i64* %8, align 8
  %221 = call i64 @FD_ISSET(i64 %220, %struct.TYPE_8__* %14)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, i32* @CURL_CSELECT_ERR, align 4
  %225 = load i32, i32* %19, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %19, align 4
  br label %227

227:                                              ; preds = %223, %219
  br label %228

228:                                              ; preds = %227, %207
  %229 = load i32, i32* %19, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %228, %164, %160, %34
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Curl_wait_ms(i32) #2

declare dso_local i64 @Curl_now(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FD_ZERO(%struct.TYPE_8__*) #2

declare dso_local i32 @VERIFY_SOCK(i64) #2

declare dso_local i32 @FD_SET(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @select(i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.timeval*) #2

declare dso_local i64 @ERROR_NOT_EINTR(i32) #2

declare dso_local i64 @ELAPSED_MS(...) #2

declare dso_local i64 @FD_ISSET(i64, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
