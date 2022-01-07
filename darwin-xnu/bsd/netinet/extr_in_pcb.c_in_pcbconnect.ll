; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, %struct.TYPE_2__*, i32, i32, i32, %struct.ifnet*, %struct.in_addr, %struct.socket* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.in_addr = type { i64 }
%struct.socket = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@SOF_ABORTED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@WNT_RELEASE = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@INP_INADDR_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nstat_collect = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_pcbconnect(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.proc* %2, i32 %3, %struct.ifnet** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifnet**, align 8
  %12 = alloca %struct.in_addr, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.inpcb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.socket*, align 8
  %17 = alloca %struct.in_addr, align 8
  store %struct.inpcb* %0, %struct.inpcb** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.proc* %2, %struct.proc** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ifnet** %4, %struct.ifnet*** %11, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %19 = bitcast %struct.sockaddr* %18 to i8*
  %20 = bitcast i8* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %13, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 7
  %23 = load %struct.socket*, %struct.socket** %22, align 8
  store %struct.socket* %23, %struct.socket** %16, align 8
  %24 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.ifnet**, %struct.ifnet*** %11, align 8
  %28 = call i32 @in_pcbladdr(%struct.inpcb* %24, %struct.sockaddr* %25, %struct.in_addr* %12, i32 %26, %struct.ifnet** %27, i32 0)
  store i32 %28, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %204

32:                                               ; preds = %5
  %33 = load %struct.socket*, %struct.socket** %16, align 8
  %34 = call i32 @socket_unlock(%struct.socket* %33, i32 0)
  %35 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 6
  %52 = bitcast %struct.in_addr* %17 to i8*
  %53 = bitcast %struct.in_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  br label %57

54:                                               ; preds = %32
  %55 = bitcast %struct.in_addr* %17 to i8*
  %56 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.inpcb* @in_pcblookup_hash(%struct.TYPE_2__* %37, i32 %40, i32 %43, i64 %62, i64 %60, i32 0, i32* null)
  store %struct.inpcb* %63, %struct.inpcb** %14, align 8
  %64 = load %struct.socket*, %struct.socket** %16, align 8
  %65 = call i32 @socket_lock(%struct.socket* %64, i32 0)
  %66 = load %struct.socket*, %struct.socket** %16, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SOF_ABORTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %73, i32* %6, align 4
  br label %204

74:                                               ; preds = %57
  %75 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %76 = icmp ne %struct.inpcb* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %79 = load i32, i32* @WNT_RELEASE, align 4
  %80 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %81 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %82 = icmp eq %struct.inpcb* %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = call i32 @in_pcb_checkstate(%struct.inpcb* %78, i32 %79, i32 %84)
  %86 = load i32, i32* @EADDRINUSE, align 4
  store i32 %86, i32* %6, align 4
  br label %204

87:                                               ; preds = %74
  %88 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %89 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @INADDR_ANY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %87
  %95 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %96 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %101 = load %struct.proc*, %struct.proc** %9, align 8
  %102 = call i32 @in_pcbbind(%struct.inpcb* %100, i32* null, %struct.proc* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %6, align 4
  br label %204

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %94
  %109 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %110 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @lck_rw_try_lock_exclusive(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %108
  %117 = load %struct.socket*, %struct.socket** %16, align 8
  %118 = call i32 @socket_unlock(%struct.socket* %117, i32 0)
  %119 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %120 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lck_rw_lock_exclusive(i32 %123)
  %125 = load %struct.socket*, %struct.socket** %16, align 8
  %126 = call i32 @socket_lock(%struct.socket* %125, i32 0)
  br label %127

127:                                              ; preds = %116, %108
  %128 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %129 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %128, i32 0, i32 6
  %130 = bitcast %struct.in_addr* %129 to i8*
  %131 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 8, i1 false)
  %132 = load %struct.ifnet**, %struct.ifnet*** %11, align 8
  %133 = icmp ne %struct.ifnet** %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.ifnet**, %struct.ifnet*** %11, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %135, align 8
  br label %138

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi %struct.ifnet* [ %136, %134 ], [ null, %137 ]
  %140 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %141 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %140, i32 0, i32 5
  store %struct.ifnet* %139, %struct.ifnet** %141, align 8
  %142 = load i32, i32* @INP_INADDR_ANY, align 4
  %143 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %144 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %174

147:                                              ; preds = %87
  %148 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %149 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @EINVAL, align 4
  store i32 %153, i32* %6, align 4
  br label %204

154:                                              ; preds = %147
  %155 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %156 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @lck_rw_try_lock_exclusive(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %154
  %163 = load %struct.socket*, %struct.socket** %16, align 8
  %164 = call i32 @socket_unlock(%struct.socket* %163, i32 0)
  %165 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %166 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @lck_rw_lock_exclusive(i32 %169)
  %171 = load %struct.socket*, %struct.socket** %16, align 8
  %172 = call i32 @socket_lock(%struct.socket* %171, i32 0)
  br label %173

173:                                              ; preds = %162, %154
  br label %174

174:                                              ; preds = %173, %138
  %175 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %179 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %181 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %184 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load i64, i64* @nstat_collect, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %174
  %188 = load %struct.socket*, %struct.socket** %16, align 8
  %189 = call i64 @SOCK_PROTO(%struct.socket* %188)
  %190 = load i64, i64* @IPPROTO_UDP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %194 = call i32 @nstat_pcb_invalidate_cache(%struct.inpcb* %193)
  br label %195

195:                                              ; preds = %192, %187, %174
  %196 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %197 = call i32 @in_pcbrehash(%struct.inpcb* %196)
  %198 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %199 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @lck_rw_done(i32 %202)
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %195, %152, %105, %77, %72, %30
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @in_pcbladdr(%struct.inpcb*, %struct.sockaddr*, %struct.in_addr*, i32, %struct.ifnet**, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local %struct.inpcb* @in_pcblookup_hash(%struct.TYPE_2__*, i32, i32, i64, i64, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local i32 @in_pcbbind(%struct.inpcb*, i32*, %struct.proc*) #1

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @nstat_pcb_invalidate_cache(%struct.inpcb*) #1

declare dso_local i32 @in_pcbrehash(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
