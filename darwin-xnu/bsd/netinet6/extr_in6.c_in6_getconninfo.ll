; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_getconninfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_getconninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }
%struct.in6pcb = type { i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.conninfo_tcp = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAE_CONNID_ANY = common dso_local global i32 0, align 4
@SAE_CONNID_ALL = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@CIF_CONNECTED = common dso_local global i32 0, align 4
@CIF_PREFERRED = common dso_local global i32 0, align 4
@INP_BOUND_IF = common dso_local global i32 0, align 4
@CIF_BOUND_IF = common dso_local global i32 0, align 4
@INP_IN6ADDR_ANY = common dso_local global i32 0, align 4
@CIF_BOUND_IP = common dso_local global i32 0, align 4
@INP_ANONPORT = common dso_local global i32 0, align 4
@CIF_BOUND_PORT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@CIAUX_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_getconninfo(%struct.socket* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6, i32 %7, i32* %8, i32* %9, i32 %10, i32* %11) #0 {
  %13 = alloca %struct.socket*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.in6pcb*, align 8
  %26 = alloca %struct.sockaddr_in6, align 4
  %27 = alloca %struct.ifnet*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.conninfo_tcp, align 4
  store %struct.socket* %0, %struct.socket** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  %31 = load %struct.socket*, %struct.socket** %13, align 8
  %32 = call %struct.in6pcb* @sotoin6pcb(%struct.socket* %31)
  store %struct.in6pcb* %32, %struct.in6pcb** %25, align 8
  store %struct.ifnet* null, %struct.ifnet** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %33 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %34 = icmp eq %struct.in6pcb* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %28, align 4
  br label %230

37:                                               ; preds = %12
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @SAE_CONNID_ANY, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @SAE_CONNID_ALL, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %28, align 4
  br label %230

50:                                               ; preds = %45, %41, %37
  %51 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %52 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %51, i32 0, i32 5
  %53 = load %struct.ifnet*, %struct.ifnet** %52, align 8
  store %struct.ifnet* %53, %struct.ifnet** %27, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  %55 = icmp ne %struct.ifnet* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %63 = load i32*, i32** %16, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.socket*, %struct.socket** %13, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %17, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %15, align 8
  store i32 0, i32* %68, align 4
  %69 = load %struct.socket*, %struct.socket** %13, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SS_ISCONNECTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load i32, i32* @CIF_CONNECTED, align 4
  %77 = load i32, i32* @CIF_PREFERRED, align 4
  %78 = or i32 %76, %77
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %61
  %83 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %84 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @INP_BOUND_IF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* @CIF_BOUND_IF, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %96 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @INP_IN6ADDR_ANY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @CIF_BOUND_IP, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %94
  %107 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %108 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @INP_ANONPORT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @CIF_BOUND_PORT, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %106
  %119 = call i32 @bzero(%struct.sockaddr_in6* %26, i32 12)
  %120 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  store i32 12, i32* %120, align 4
  %121 = load i32, i32* @AF_INET6, align 4
  %122 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 2
  store i32 %121, i32* %122, align 4
  %123 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %124 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %128 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %127, i32 0, i32 3
  %129 = call i32 @in6_recoverscope(%struct.sockaddr_in6* %26, i32* %128, i32* null)
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %19, align 8
  store i32 %135, i32* %136, align 4
  br label %155

137:                                              ; preds = %118
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @USER_ADDR_NULL, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i32*, i32** %19, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @min(i32 %143, i32 12)
  store i32 %144, i32* %29, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %29, align 4
  %147 = call i32 @copyout(%struct.sockaddr_in6* %26, i32 %145, i32 %146)
  store i32 %147, i32* %28, align 4
  %148 = load i32, i32* %28, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %230

151:                                              ; preds = %141
  %152 = load i32, i32* %29, align 4
  %153 = load i32*, i32** %19, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %137
  br label %155

155:                                              ; preds = %154, %133
  %156 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %157 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = load %struct.in6pcb*, %struct.in6pcb** %25, align 8
  %161 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %160, i32 0, i32 1
  %162 = call i32 @in6_recoverscope(%struct.sockaddr_in6* %26, i32* %161, i32* null)
  %163 = load i32*, i32** %21, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %21, align 8
  store i32 %168, i32* %169, align 4
  br label %188

170:                                              ; preds = %155
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* @USER_ADDR_NULL, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @min(i32 %176, i32 12)
  store i32 %177, i32* %29, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %29, align 4
  %180 = call i32 @copyout(%struct.sockaddr_in6* %26, i32 %178, i32 %179)
  store i32 %180, i32* %28, align 4
  %181 = load i32, i32* %28, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %230

184:                                              ; preds = %174
  %185 = load i32, i32* %29, align 4
  %186 = load i32*, i32** %21, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %170
  br label %188

188:                                              ; preds = %187, %166
  %189 = load %struct.socket*, %struct.socket** %13, align 8
  %190 = call i64 @SOCK_PROTO(%struct.socket* %189)
  %191 = load i64, i64* @IPPROTO_TCP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %188
  %194 = load i32, i32* @CIAUX_TCP, align 4
  %195 = load i32*, i32** %22, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i32*, i32** %24, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i32*, i32** %24, align 8
  store i32 12, i32* %200, align 4
  br label %225

201:                                              ; preds = %193
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* @USER_ADDR_NULL, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load i32*, i32** %24, align 8
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @min(i32 %207, i32 12)
  store i32 %208, i32* %29, align 4
  %209 = bitcast %struct.conninfo_tcp* %30 to %struct.sockaddr_in6*
  %210 = call i32 @bzero(%struct.sockaddr_in6* %209, i32 12)
  %211 = load %struct.socket*, %struct.socket** %13, align 8
  %212 = bitcast %struct.conninfo_tcp* %30 to %struct.sockaddr_in6*
  %213 = call i32 @tcp_getconninfo(%struct.socket* %211, %struct.sockaddr_in6* %212)
  %214 = bitcast %struct.conninfo_tcp* %30 to %struct.sockaddr_in6*
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* %29, align 4
  %217 = call i32 @copyout(%struct.sockaddr_in6* %214, i32 %215, i32 %216)
  store i32 %217, i32* %28, align 4
  %218 = load i32, i32* %28, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %205
  br label %230

221:                                              ; preds = %205
  %222 = load i32, i32* %29, align 4
  %223 = load i32*, i32** %24, align 8
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %201
  br label %225

225:                                              ; preds = %224, %199
  br label %229

226:                                              ; preds = %188
  %227 = load i32*, i32** %22, align 8
  store i32 0, i32* %227, align 4
  %228 = load i32*, i32** %24, align 8
  store i32 0, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %225
  br label %230

230:                                              ; preds = %229, %220, %183, %150, %48, %35
  %231 = load i32, i32* %28, align 4
  ret i32 %231
}

declare dso_local %struct.in6pcb* @sotoin6pcb(%struct.socket*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @in6_recoverscope(%struct.sockaddr_in6*, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @copyout(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @tcp_getconninfo(%struct.socket*, %struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
