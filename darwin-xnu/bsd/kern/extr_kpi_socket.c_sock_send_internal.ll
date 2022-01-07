; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_send_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_send_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, %struct.sockaddr*, i32*, %struct.mbuf*, %struct.mbuf*, i32)* }
%struct.sockaddr = type { i32 }
%struct.msghdr = type { i32, i64, i64, i64, %struct.iovec* }
%struct.iovec = type { i32, i32 }
%struct.mbuf = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@MLEN = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_CONTROL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_send_internal(%struct.TYPE_10__* %0, %struct.msghdr* %1, %struct.mbuf* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.iovec*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %22 = icmp ne %struct.msghdr* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 1, %27 ]
  %30 = call i32 @UIO_SIZEOF(i32 %29)
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %16, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = icmp eq %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %14, align 4
  br label %222

38:                                               ; preds = %28
  %39 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %92

41:                                               ; preds = %38
  %42 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %43 = icmp ne %struct.msghdr* %42, null
  br i1 %43, label %44, label %92

44:                                               ; preds = %41
  %45 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %45, i32 0, i32 4
  %47 = load %struct.iovec*, %struct.iovec** %46, align 8
  store %struct.iovec* %47, %struct.iovec** %18, align 8
  %48 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @UIO_SYSSPACE, align 4
  %52 = load i32, i32* @UIO_WRITE, align 4
  %53 = getelementptr inbounds i8, i8* %33, i64 0
  %54 = trunc i64 %31 to i32
  %55 = call i32* @uio_createwithbuffer(i32 %50, i32 0, i32 %51, i32 %52, i8* %53, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load %struct.iovec*, %struct.iovec** %18, align 8
  %57 = icmp ne %struct.iovec* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %44
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %19, align 4
  %61 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.iovec*, %struct.iovec** %18, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i64 %69
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CAST_USER_ADDR_T(i32 %72)
  %74 = load %struct.iovec*, %struct.iovec** %18, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i64 %76
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @uio_addiov(i32* %66, i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @uio_resid(i32* %85)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %14, align 4
  br label %222

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %44
  br label %92

92:                                               ; preds = %91, %41, %38
  %93 = load i64*, i64** %11, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64*, i64** %11, align 8
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @uio_resid(i32* %101)
  store i32 %102, i32* %15, align 4
  br label %108

103:                                              ; preds = %97
  %104 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %110 = icmp ne %struct.msghdr* %109, null
  br i1 %110, label %111, label %155

111:                                              ; preds = %108
  %112 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %113 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %111
  %117 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %118 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %119, 4
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %14, align 4
  br label %222

123:                                              ; preds = %116
  %124 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %125 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MLEN, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %14, align 4
  br label %222

131:                                              ; preds = %123
  %132 = load i32, i32* @M_NOWAIT, align 4
  %133 = load i32, i32* @MT_CONTROL, align 4
  %134 = call %struct.mbuf* @m_get(i32 %132, i32 %133)
  store %struct.mbuf* %134, %struct.mbuf** %13, align 8
  %135 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %136 = icmp eq %struct.mbuf* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @ENOMEM, align 4
  store i32 %138, i32* %14, align 4
  br label %222

139:                                              ; preds = %131
  %140 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %141 = load i32, i32* @caddr_t, align 4
  %142 = call i32 @mtod(%struct.mbuf* %140, i32 %141)
  %143 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %144 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %147 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @memcpy(i32 %142, i64 %145, i64 %148)
  %150 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %151 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %139, %111, %108
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32 (%struct.TYPE_10__*, %struct.sockaddr*, i32*, %struct.mbuf*, %struct.mbuf*, i32)*, i32 (%struct.TYPE_10__*, %struct.sockaddr*, i32*, %struct.mbuf*, %struct.mbuf*, i32)** %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %164 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %165 = icmp ne %struct.msghdr* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %155
  %167 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %168 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to %struct.sockaddr*
  br label %172

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %166
  %173 = phi %struct.sockaddr* [ %170, %166 ], [ null, %171 ]
  %174 = load i32*, i32** %12, align 8
  %175 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %176 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 %162(%struct.TYPE_10__* %163, %struct.sockaddr* %173, i32* %174, %struct.mbuf* %175, %struct.mbuf* %176, i32 %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %199

181:                                              ; preds = %172
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @uio_resid(i32* %182)
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @ERESTART, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @EINTR, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @EWOULDBLOCK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %190, %186
  store i32 0, i32* %14, align 4
  br label %199

199:                                              ; preds = %198, %194, %181, %172
  %200 = load i32, i32* %14, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %220

202:                                              ; preds = %199
  %203 = load i64*, i64** %11, align 8
  %204 = icmp ne i64* %203, null
  br i1 %204, label %205, label %220

205:                                              ; preds = %202
  %206 = load i32*, i32** %12, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i32, i32* %15, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = call i32 @uio_resid(i32* %210)
  %212 = sub nsw i32 %209, %211
  %213 = sext i32 %212 to i64
  %214 = load i64*, i64** %11, align 8
  store i64 %213, i64* %214, align 8
  br label %219

215:                                              ; preds = %205
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64*, i64** %11, align 8
  store i64 %217, i64* %218, align 8
  br label %219

219:                                              ; preds = %215, %208
  br label %220

220:                                              ; preds = %219, %202, %199
  %221 = load i32, i32* %14, align 4
  store i32 %221, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %241

222:                                              ; preds = %137, %129, %121, %88, %36
  %223 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %224 = icmp ne %struct.mbuf* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %227 = call i32 @m_freem(%struct.mbuf* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %230 = icmp ne %struct.mbuf* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %233 = call i32 @m_freem(%struct.mbuf* %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i64*, i64** %11, align 8
  %236 = icmp ne i64* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i64*, i64** %11, align 8
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %237, %234
  %240 = load i32, i32* %14, align 4
  store i32 %240, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %241

241:                                              ; preds = %239, %220
  %242 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @uio_resid(i32*) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
