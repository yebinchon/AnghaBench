; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_getconninfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_getconninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }
%struct.inpcb = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__, i32, %struct.ifnet* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.conninfo_tcp = type { i32, %struct.TYPE_5__, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAE_CONNID_ANY = common dso_local global i32 0, align 4
@SAE_CONNID_ALL = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@CIF_CONNECTED = common dso_local global i32 0, align 4
@CIF_PREFERRED = common dso_local global i32 0, align 4
@INP_BOUND_IF = common dso_local global i32 0, align 4
@CIF_BOUND_IF = common dso_local global i32 0, align 4
@INP_INADDR_ANY = common dso_local global i32 0, align 4
@CIF_BOUND_IP = common dso_local global i32 0, align 4
@INP_ANONPORT = common dso_local global i32 0, align 4
@CIF_BOUND_PORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@CIAUX_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_getconninfo(%struct.socket* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6, i32 %7, i32* %8, i32* %9, i32 %10, i32* %11) #0 {
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
  %25 = alloca %struct.inpcb*, align 8
  %26 = alloca %struct.sockaddr_in, align 4
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
  %32 = call %struct.inpcb* @sotoinpcb(%struct.socket* %31)
  store %struct.inpcb* %32, %struct.inpcb** %25, align 8
  store %struct.ifnet* null, %struct.ifnet** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %33 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %34 = icmp eq %struct.inpcb* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %28, align 4
  br label %236

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
  br label %236

50:                                               ; preds = %45, %41, %37
  %51 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 5
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
  %83 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %84 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %83, i32 0, i32 0
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
  %95 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %96 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @INP_INADDR_ANY, align 4
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
  %107 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %108 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %107, i32 0, i32 0
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
  %119 = call i32 @bzero(%struct.sockaddr_in* %26, i32 16)
  %120 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  store i32 16, i32* %120, align 4
  %121 = load i32, i32* @AF_INET, align 4
  %122 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 3
  store i32 %121, i32* %122, align 4
  %123 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %124 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %128 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %19, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %118
  %137 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %19, align 8
  store i32 %138, i32* %139, align 4
  br label %158

140:                                              ; preds = %118
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @USER_ADDR_NULL, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load i32*, i32** %19, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @min(i32 %146, i32 16)
  store i32 %147, i32* %29, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %29, align 4
  %150 = call i32 @copyout(%struct.sockaddr_in* %26, i32 %148, i32 %149)
  store i32 %150, i32* %28, align 4
  %151 = load i32, i32* %28, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %236

154:                                              ; preds = %144
  %155 = load i32, i32* %29, align 4
  %156 = load i32*, i32** %19, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %140
  br label %158

158:                                              ; preds = %157, %136
  %159 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %160 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 2
  store i32 %161, i32* %162, align 4
  %163 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  %164 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load i32*, i32** %21, align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %158
  %173 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %21, align 8
  store i32 %174, i32* %175, align 4
  br label %194

176:                                              ; preds = %158
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* @USER_ADDR_NULL, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = load i32*, i32** %21, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @min(i32 %182, i32 16)
  store i32 %183, i32* %29, align 4
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %29, align 4
  %186 = call i32 @copyout(%struct.sockaddr_in* %26, i32 %184, i32 %185)
  store i32 %186, i32* %28, align 4
  %187 = load i32, i32* %28, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  br label %236

190:                                              ; preds = %180
  %191 = load i32, i32* %29, align 4
  %192 = load i32*, i32** %21, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %176
  br label %194

194:                                              ; preds = %193, %172
  %195 = load %struct.socket*, %struct.socket** %13, align 8
  %196 = call i64 @SOCK_PROTO(%struct.socket* %195)
  %197 = load i64, i64* @IPPROTO_TCP, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %232

199:                                              ; preds = %194
  %200 = load i32, i32* @CIAUX_TCP, align 4
  %201 = load i32*, i32** %22, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32*, i32** %24, align 8
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32*, i32** %24, align 8
  store i32 16, i32* %206, align 4
  br label %231

207:                                              ; preds = %199
  %208 = load i32, i32* %23, align 4
  %209 = load i32, i32* @USER_ADDR_NULL, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %207
  %212 = load i32*, i32** %24, align 8
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @min(i32 %213, i32 16)
  store i32 %214, i32* %29, align 4
  %215 = bitcast %struct.conninfo_tcp* %30 to %struct.sockaddr_in*
  %216 = call i32 @bzero(%struct.sockaddr_in* %215, i32 16)
  %217 = load %struct.socket*, %struct.socket** %13, align 8
  %218 = bitcast %struct.conninfo_tcp* %30 to %struct.sockaddr_in*
  %219 = call i32 @tcp_getconninfo(%struct.socket* %217, %struct.sockaddr_in* %218)
  %220 = bitcast %struct.conninfo_tcp* %30 to %struct.sockaddr_in*
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %29, align 4
  %223 = call i32 @copyout(%struct.sockaddr_in* %220, i32 %221, i32 %222)
  store i32 %223, i32* %28, align 4
  %224 = load i32, i32* %28, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %211
  br label %236

227:                                              ; preds = %211
  %228 = load i32, i32* %29, align 4
  %229 = load i32*, i32** %24, align 8
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %207
  br label %231

231:                                              ; preds = %230, %205
  br label %235

232:                                              ; preds = %194
  %233 = load i32*, i32** %22, align 8
  store i32 0, i32* %233, align 4
  %234 = load i32*, i32** %24, align 8
  store i32 0, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %231
  br label %236

236:                                              ; preds = %235, %226, %189, %153, %48, %35
  %237 = load i32, i32* %28, align 4
  ret i32 %237
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @copyout(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @tcp_getconninfo(%struct.socket*, %struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
