; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_buffered_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_buffered_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.sockaddr = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Send buffer is NULL, but size is supposed to be %lu\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@FLOW_DIVERT_CHUNK_SIZE = common dso_local global i64 0, align 8
@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mbuf_copym failed: %d\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@MT_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to find type MT_DATA in the mbuf chain.\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"mbuf_copym() data_len = %lu\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sent %lu bytes of buffered data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*, i32)* @flow_divert_send_buffered_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_send_buffered_data(%struct.flow_divert_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %16 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %22 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = icmp eq %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @FDLOG(i32 %33, %struct.flow_divert_pcb* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %228

37:                                               ; preds = %29, %2
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %43 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %48 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %46, %40, %37
  %51 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %52 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = call i64 @SOCK_TYPE(%struct.TYPE_13__* %53)
  %55 = load i64, i64* @SOCK_STREAM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @FLOW_DIVERT_CHUNK_SIZE, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @FLOW_DIVERT_CHUNK_SIZE, align 8
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %69, %62
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* @MBUF_DONTWAIT, align 4
  %76 = call i32 @mbuf_copym(%struct.TYPE_12__* %72, i64 %73, i64 %74, i32 %75, %struct.TYPE_12__** %9)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @FDLOG(i32 %80, %struct.flow_divert_pcb* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  br label %100

85:                                               ; preds = %71
  %86 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb* %86, %struct.TYPE_12__* %87, i64 %88, %struct.sockaddr* null, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = call i32 @mbuf_freem(%struct.TYPE_12__* %94)
  br label %100

96:                                               ; preds = %85
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %6, align 8
  br label %58

100:                                              ; preds = %93, %79, %58
  %101 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %102 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %101, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @sbdrop(%struct.TYPE_14__* %104, i64 %105)
  %107 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %108 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = call i32 @sowwakeup(%struct.TYPE_13__* %109)
  br label %205

111:                                              ; preds = %50
  %112 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %113 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %112, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = call i64 @SOCK_TYPE(%struct.TYPE_13__* %114)
  %116 = load i64, i64* @SOCK_DGRAM, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %204

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %194, %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = icmp ne %struct.TYPE_12__* %120, null
  br i1 %121, label %122, label %203

122:                                              ; preds = %119
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = call %struct.sockaddr* @flow_divert_get_buffered_target_address(%struct.TYPE_12__* %123)
  store %struct.sockaddr* %124, %struct.sockaddr** %14, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %12, align 8
  %126 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %127 = icmp ne %struct.sockaddr* %126, null
  br i1 %127, label %128, label %154

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %143, %128
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %12, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %134 = icmp ne %struct.TYPE_12__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MT_DATA, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %146

142:                                              ; preds = %135, %129
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %145 = icmp ne %struct.TYPE_12__* %144, null
  br i1 %145, label %129, label %146

146:                                              ; preds = %143, %141
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %148 = icmp eq %struct.TYPE_12__* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* @LOG_ERR, align 4
  %151 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %152 = call i32 @FDLOG0(i32 %150, %struct.flow_divert_pcb* %151, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %194

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %122
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %156 = call i64 @mbuf_pkthdr_len(%struct.TYPE_12__* %155)
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %154
  %160 = load i32, i32* @LOG_DEBUG, align 4
  %161 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %162 = load i64, i64* %13, align 8
  %163 = call i32 @FDLOG(i32 %160, %struct.flow_divert_pcb* %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load i32, i32* @MBUF_DONTWAIT, align 4
  %167 = call i32 @mbuf_copym(%struct.TYPE_12__* %164, i64 0, i64 %165, i32 %166, %struct.TYPE_12__** %11)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %159
  %171 = load i32, i32* @LOG_ERR, align 4
  %172 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = call i32 @FDLOG(i32 %171, %struct.flow_divert_pcb* %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %174)
  br label %203

176:                                              ; preds = %159
  br label %178

177:                                              ; preds = %154
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  br label %178

178:                                              ; preds = %177, %176
  %179 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb* %179, %struct.TYPE_12__* %180, i64 %181, %struct.sockaddr* %182, i32 %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = call i32 @mbuf_freem(%struct.TYPE_12__* %188)
  br label %203

190:                                              ; preds = %178
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %6, align 8
  br label %194

194:                                              ; preds = %190, %149
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  store %struct.TYPE_12__* %197, %struct.TYPE_12__** %8, align 8
  %198 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %199 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %198, i32 0, i32 1
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = call i32 @sbdroprecord(%struct.TYPE_14__* %201)
  br label %119

203:                                              ; preds = %187, %170, %119
  br label %204

204:                                              ; preds = %203, %111
  br label %205

205:                                              ; preds = %204, %100
  %206 = load i64, i64* %6, align 8
  %207 = icmp ugt i64 %206, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %205
  %209 = load i32, i32* @LOG_DEBUG, align 4
  %210 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %211 = load i64, i64* %6, align 8
  %212 = call i32 @FDLOG(i32 %209, %struct.flow_divert_pcb* %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %211)
  %213 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %214 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %6, align 8
  %217 = icmp uge i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %208
  %219 = load i64, i64* %6, align 8
  %220 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %221 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = sub i64 %222, %219
  store i64 %223, i64* %221, align 8
  br label %227

224:                                              ; preds = %208
  %225 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %226 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %224, %218
  br label %228

228:                                              ; preds = %32, %227, %205
  ret void
}

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i64) #1

declare dso_local i64 @SOCK_TYPE(%struct.TYPE_13__*) #1

declare dso_local i32 @mbuf_copym(%struct.TYPE_12__*, i64, i64, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb*, %struct.TYPE_12__*, i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @mbuf_freem(%struct.TYPE_12__*) #1

declare dso_local i32 @sbdrop(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @sowwakeup(%struct.TYPE_13__*) #1

declare dso_local %struct.sockaddr* @flow_divert_get_buffered_target_address(%struct.TYPE_12__*) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i64 @mbuf_pkthdr_len(%struct.TYPE_12__*) #1

declare dso_local i32 @sbdroprecord(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
