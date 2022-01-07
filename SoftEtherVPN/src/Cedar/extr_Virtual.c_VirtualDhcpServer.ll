; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualDhcpServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualDhcpServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_54__, i32, i32, i32, i64, %struct.TYPE_50__* }
%struct.TYPE_54__ = type { i64, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_54__, %struct.TYPE_54__, %struct.TYPE_54__ }
%struct.TYPE_50__ = type { i32* }
%struct.TYPE_53__ = type { i32, %struct.TYPE_49__, %struct.TYPE_47__, i32*, i64, %struct.TYPE_51__ }
%struct.TYPE_49__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i64 }
%struct.TYPE_51__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i64, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_54__, i32, i32 }
%struct.TYPE_43__ = type { i64, i32, i32, i32 }

@DHCP_MAGIC_COOKIE = common dso_local global i32 0, align 4
@NN_HOSTNAME_STARTWITH = common dso_local global i32 0, align 4
@NN_HOSTNAME_STARTWITH2 = common dso_local global i32 0, align 4
@DHCP_DISCOVER = common dso_local global i64 0, align 8
@DHCP_REQUEST = common dso_local global i64 0, align 8
@DHCP_INFORM = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"LH_NAT_DHCP_CREATED\00", align 1
@DHCP_OFFER = common dso_local global i64 0, align 8
@DHCP_ACK = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@GSF_DISABLE_PUSH_ROUTE = common dso_local global i32 0, align 4
@MAX_DHCP_CLASSLESS_ROUTE_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"VirtualDhcpServer(): %s has been marked as pending for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"VirtualDhcpServer(): %s has been assigned to %s\0A\00", align 1
@DHCP_NACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualDhcpServer(%struct.TYPE_52__* %0, %struct.TYPE_53__* %1) #0 {
  %3 = alloca %struct.TYPE_52__*, align 8
  %4 = alloca %struct.TYPE_53__*, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_43__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_42__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_54__, align 8
  %22 = alloca %struct.TYPE_54__, align 8
  %23 = alloca %struct.TYPE_54__, align 8
  %24 = alloca %struct.TYPE_44__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca [64 x i8], align 16
  %28 = alloca %struct.TYPE_54__, align 8
  %29 = alloca %struct.TYPE_43__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_42__, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %3, align 8
  store %struct.TYPE_53__* %1, %struct.TYPE_53__** %4, align 8
  %36 = load i32, i32* @DHCP_MAGIC_COOKIE, align 4
  %37 = call i8* @Endian32(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %40 = icmp eq %struct.TYPE_52__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %43 = icmp eq %struct.TYPE_53__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %2
  br label %652

45:                                               ; preds = %41
  %46 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %46, i32 0, i32 12
  %48 = load %struct.TYPE_50__*, %struct.TYPE_50__** %47, align 8
  %49 = icmp ne %struct.TYPE_50__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %54, i32 0, i32 12
  %56 = load %struct.TYPE_50__*, %struct.TYPE_50__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @Cmp(i32* %53, i32* %58, i32 6)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_45__*, %struct.TYPE_45__** %66, align 8
  store %struct.TYPE_45__* %67, %struct.TYPE_45__** %5, align 8
  %68 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @Endian32(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %10, align 4
  store i32 20, i32* %8, align 4
  %73 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %75, align 8
  %77 = bitcast %struct.TYPE_45__* %76 to i32*
  %78 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = ptrtoint i32* %77 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %91 = bitcast %struct.TYPE_45__* %90 to i32*
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %6, align 8
  %95 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %102, label %103

102:                                              ; preds = %63
  br label %652

103:                                              ; preds = %63
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %116, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 5
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i32*, i32** %6, align 8
  %109 = call i64 @Cmp(i32* %108, i32* %11, i32 4)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 4
  store i32 %115, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %121

116:                                              ; preds = %107
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %7, align 4
  br label %104

121:                                              ; preds = %111, %104
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %652

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call %struct.TYPE_42__* @ParseDhcpOptionList(i32* %126, i32 %127)
  store %struct.TYPE_42__* %128, %struct.TYPE_42__** %13, align 8
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %130 = icmp eq %struct.TYPE_42__* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %652

132:                                              ; preds = %125
  %133 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NN_HOSTNAME_STARTWITH, align 4
  %137 = call i64 @StartWith(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %132
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NN_HOSTNAME_STARTWITH2, align 4
  %144 = call i64 @StartWith(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139, %132
  %147 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %148 = call i32 @Free(%struct.TYPE_42__* %147)
  br label %652

149:                                              ; preds = %139
  %150 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %649

154:                                              ; preds = %149
  %155 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @DHCP_DISCOVER, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %172, label %160

160:                                              ; preds = %154
  %161 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DHCP_REQUEST, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DHCP_INFORM, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %649

172:                                              ; preds = %166, %160, %154
  store i32 0, i32* %14, align 4
  %173 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_46__*, %struct.TYPE_46__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %177, %172
  %187 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @DHCP_DISCOVER, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %194 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @ServeDhcpDiscover(%struct.TYPE_52__* %193, i32* %196, i64 %199)
  store i32 %200, i32* %14, align 4
  br label %217

201:                                              ; preds = %186
  %202 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @DHCP_REQUEST, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %209 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @ServeDhcpRequest(%struct.TYPE_52__* %208, i32* %211, i64 %214)
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %207, %201
  br label %217

217:                                              ; preds = %216, %192
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @DHCP_INFORM, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %582

226:                                              ; preds = %220, %217
  %227 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @DHCP_REQUEST, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %316

232:                                              ; preds = %226
  %233 = load i32, i32* @MAX_SIZE, align 4
  %234 = zext i32 %233 to i64
  %235 = call i8* @llvm.stacksave()
  store i8* %235, i8** %16, align 8
  %236 = alloca i8, i64 %234, align 16
  store i64 %234, i64* %17, align 8
  %237 = load i32, i32* @MAX_SIZE, align 4
  %238 = zext i32 %237 to i64
  %239 = alloca i8, i64 %238, align 16
  store i64 %238, i64* %18, align 8
  %240 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %241 = load i32, i32* %14, align 4
  %242 = call %struct.TYPE_43__* @SearchDhcpLeaseByIp(%struct.TYPE_52__* %240, i32 %241)
  store %struct.TYPE_43__* %242, %struct.TYPE_43__** %15, align 8
  %243 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %244 = icmp ne %struct.TYPE_43__* %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %232
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %247 = call i32 @FreeDhcpLease(%struct.TYPE_43__* %246)
  %248 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %248, i32 0, i32 10
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %252 = call i32 @Delete(i32 %250, %struct.TYPE_43__* %251)
  br label %253

253:                                              ; preds = %245, %232
  %254 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call %struct.TYPE_43__* @SearchDhcpPendingLeaseByIp(%struct.TYPE_52__* %254, i32 %255)
  store %struct.TYPE_43__* %256, %struct.TYPE_43__** %15, align 8
  %257 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %258 = icmp ne %struct.TYPE_43__* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %253
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %261 = call i32 @FreeDhcpLease(%struct.TYPE_43__* %260)
  %262 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %266 = call i32 @Delete(i32 %264, %struct.TYPE_43__* %265)
  br label %267

267:                                              ; preds = %259, %253
  %268 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = call %struct.TYPE_43__* @NewDhcpLease(i32 %270, i32* %273, i32 %274, i32 %277, i32 %280)
  store %struct.TYPE_43__* %281, %struct.TYPE_43__** %15, align 8
  %282 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %282, i32 0, i32 11
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  %286 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  %288 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %292 = call i32 @Add(i32 %290, %struct.TYPE_43__* %291)
  %293 = trunc i64 %234 to i32
  %294 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @MacToStr(i8* %236, i32 %293, i32 %296)
  %298 = trunc i64 %238 to i32
  %299 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @IPToStr32(i8* %239, i32 %298, i32 %301)
  %303 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %304 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %308 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sdiv i32 %312, 1000
  %314 = call i32 @NLog(%struct.TYPE_52__* %303, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %306, i8* %236, i8* %239, i32 %309, i32 %313)
  %315 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %315)
  br label %316

316:                                              ; preds = %267, %226
  %317 = call i32 @Zero(%struct.TYPE_42__* %19, i32 72)
  %318 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @DHCP_DISCOVER, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i64, i64* @DHCP_OFFER, align 8
  br label %327

325:                                              ; preds = %316
  %326 = load i64, i64* @DHCP_ACK, align 8
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i64 [ %324, %323 ], [ %326, %325 ]
  %329 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 0
  store i64 %328, i64* %329, align 8
  %330 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 2
  store i32 %332, i32* %333, align 8
  %334 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @INFINITE, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %327
  %340 = load i32, i32* @INFINITE, align 4
  %341 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 3
  store i32 %340, i32* %341, align 4
  br label %350

342:                                              ; preds = %327
  %343 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = sdiv i32 %345, 1000
  %347 = call i8* @Endian32(i32 %346)
  %348 = ptrtoint i8* %347 to i32
  %349 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 3
  store i32 %348, i32* %349, align 4
  br label %350

350:                                              ; preds = %342, %339
  %351 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @DHCP_INFORM, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 3
  store i32 0, i32* %357, align 4
  br label %358

358:                                              ; preds = %356, %350
  %359 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @StrCpy(i32 %360, i32 4, i32 %363)
  %365 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 4
  store i32 %367, i32* %368, align 8
  %369 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %369, i32 0, i32 9
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 10
  store i32 %371, i32* %372, align 4
  %373 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %373, i32 0, i32 8
  %375 = load i32, i32* %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 9
  store i32 %375, i32* %376, align 8
  %377 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 5
  store i64 %379, i64* %380, align 8
  %381 = load i32, i32* @GSF_DISABLE_PUSH_ROUTE, align 4
  %382 = call i64 @GetGlobalServerFlag(i32 %381)
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %479

384:                                              ; preds = %358
  %385 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %386 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %386, i32 0, i32 7
  %388 = call i32 @Copy(%struct.TYPE_54__* %385, %struct.TYPE_54__* %387, i32 4)
  %389 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %389, i32 0, i32 3
  %391 = load i32*, i32** %390, align 8
  %392 = call i64 @IsIpcMacAddress(i32* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %478

394:                                              ; preds = %384
  %395 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 5
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %477

398:                                              ; preds = %394
  %399 = load i32, i32* %14, align 4
  %400 = call i32 @UINTToIP(%struct.TYPE_54__* %21, i32 %399)
  %401 = load i32, i32* %14, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %398
  %404 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_46__*, %struct.TYPE_46__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = trunc i64 %409 to i32
  %411 = call i32 @UINTToIP(%struct.TYPE_54__* %21, i32 %410)
  br label %412

412:                                              ; preds = %403, %398
  %413 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @UINTToIP(%struct.TYPE_54__* %22, i32 %415)
  %417 = call i32 @IPAnd4(%struct.TYPE_54__* %23, %struct.TYPE_54__* %21, %struct.TYPE_54__* %22)
  %418 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %419 = call i32* @GetBestClasslessRoute(%struct.TYPE_54__* %418, %struct.TYPE_54__* %21)
  %420 = icmp eq i32* %419, null
  br i1 %420, label %421, label %476

421:                                              ; preds = %412
  %422 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %423 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @MAX_DHCP_CLASSLESS_ROUTE_ENTRIES, align 8
  %426 = icmp ult i64 %424, %425
  br i1 %426, label %427, label %475

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %429 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %428, i32 0, i32 1
  %430 = load %struct.TYPE_44__*, %struct.TYPE_44__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %432 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %430, i64 %433
  store %struct.TYPE_44__* %434, %struct.TYPE_44__** %24, align 8
  %435 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %436 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %435, i32 0, i32 0
  store i32 1, i32* %436, align 8
  %437 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %438 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @UINTToIP(%struct.TYPE_54__* %438, i32 %441)
  %443 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 8
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %461

447:                                              ; preds = %427
  %448 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %449 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp uge i64 %450, 1
  br i1 %451, label %452, label %461

452:                                              ; preds = %447
  %453 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %454 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_44__*, %struct.TYPE_44__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %457, i64 0
  %459 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %458, i32 0, i32 4
  %460 = call i32 @Copy(%struct.TYPE_54__* %454, %struct.TYPE_54__* %459, i32 16)
  br label %461

461:                                              ; preds = %452, %447, %427
  %462 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %463 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %462, i32 0, i32 3
  %464 = call i32 @Copy(%struct.TYPE_54__* %463, %struct.TYPE_54__* %23, i32 16)
  %465 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %466 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %465, i32 0, i32 2
  %467 = call i32 @Copy(%struct.TYPE_54__* %466, %struct.TYPE_54__* %22, i32 16)
  %468 = call i32 @SubnetMaskToInt(%struct.TYPE_54__* %22)
  %469 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %470 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %469, i32 0, i32 1
  store i32 %468, i32* %470, align 4
  %471 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 8
  %472 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = add i64 %473, 1
  store i64 %474, i64* %472, align 8
  br label %475

475:                                              ; preds = %461, %421
  br label %476

476:                                              ; preds = %475, %412
  br label %477

477:                                              ; preds = %476, %394
  br label %478

478:                                              ; preds = %477, %384
  br label %479

479:                                              ; preds = %478, %358
  %480 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %481 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @DHCP_INFORM, align 8
  %484 = icmp ne i64 %482, %483
  br i1 %484, label %485, label %533

485:                                              ; preds = %479
  %486 = load i32, i32* @MAX_SIZE, align 4
  %487 = zext i32 %486 to i64
  %488 = call i8* @llvm.stacksave()
  store i8* %488, i8** %25, align 8
  %489 = alloca i8, i64 %487, align 16
  store i64 %487, i64* %26, align 8
  %490 = trunc i64 %487 to i32
  %491 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %491, i32 0, i32 3
  %493 = load i32*, i32** %492, align 8
  %494 = call i32 @BinToStr(i8* %489, i32 %490, i32* %493, i32 6)
  %495 = load i32, i32* %14, align 4
  %496 = call i32 @UINTToIP(%struct.TYPE_54__* %28, i32 %495)
  %497 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %498 = call i32 @IPToStr(i8* %497, i32 64, %struct.TYPE_54__* %28)
  %499 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @DHCP_OFFER, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %528

503:                                              ; preds = %485
  %504 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %504, i32 0, i32 3
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %14, align 4
  %508 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %512 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %511, i32 0, i32 7
  %513 = load i32, i32* %512, align 4
  %514 = call %struct.TYPE_43__* @NewDhcpLease(i32 5000, i32* %506, i32 %507, i32 %510, i32 %513)
  store %struct.TYPE_43__* %514, %struct.TYPE_43__** %29, align 8
  %515 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %515, i32 0, i32 6
  %517 = load i32, i32* %516, align 8
  %518 = call i64 @LIST_NUM(i32 %517)
  %519 = load %struct.TYPE_43__*, %struct.TYPE_43__** %29, align 8
  %520 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %519, i32 0, i32 0
  store i64 %518, i64* %520, align 8
  %521 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %521, i32 0, i32 6
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.TYPE_43__*, %struct.TYPE_43__** %29, align 8
  %525 = call i32 @Add(i32 %523, %struct.TYPE_43__* %524)
  %526 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %527 = call i32 @Debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %526, i8* %489)
  br label %531

528:                                              ; preds = %485
  %529 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %530 = call i32 @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %529, i8* %489)
  br label %531

531:                                              ; preds = %528, %503
  %532 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %532)
  br label %533

533:                                              ; preds = %531, %479
  %534 = call i32* @BuildDhcpOption(%struct.TYPE_42__* %19)
  store i32* %534, i32** %20, align 8
  %535 = load i32*, i32** %20, align 8
  %536 = icmp ne i32* %535, null
  br i1 %536, label %537, label %581

537:                                              ; preds = %533
  %538 = load i32*, i32** %20, align 8
  %539 = call i32* @BuildDhcpOptionsBuf(i32* %538)
  store i32* %539, i32** %30, align 8
  %540 = load i32*, i32** %30, align 8
  %541 = icmp ne i32* %540, null
  br i1 %541, label %542, label %578

542:                                              ; preds = %537
  %543 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %544, i32 0, i32 0
  %546 = load %struct.TYPE_46__*, %struct.TYPE_46__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = trunc i64 %548 to i32
  store i32 %549, i32* %31, align 4
  %550 = load i32, i32* %31, align 4
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %542
  store i32 -1, i32* %31, align 4
  br label %553

553:                                              ; preds = %552, %542
  %554 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %555 = load i32, i32* %10, align 4
  %556 = load i32, i32* %31, align 4
  %557 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %558, i32 0, i32 0
  %560 = load %struct.TYPE_48__*, %struct.TYPE_48__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @Endian16(i32 %562)
  %564 = load i32, i32* %14, align 4
  %565 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %565, i32 0, i32 4
  %567 = load i32, i32* %566, align 4
  %568 = load i32*, i32** %30, align 8
  %569 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %573 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @VirtualDhcpSend(%struct.TYPE_52__* %554, i32 %555, i32 %556, i32 %563, i32 %564, i32 %567, i32* %568, i32 %571, i32 %574)
  %576 = load i32*, i32** %30, align 8
  %577 = call i32 @FreeBuf(i32* %576)
  br label %578

578:                                              ; preds = %553, %537
  %579 = load i32*, i32** %20, align 8
  %580 = call i32 @FreeDhcpOptions(i32* %579)
  br label %581

581:                                              ; preds = %578, %533
  br label %648

582:                                              ; preds = %220
  %583 = call i32 @Zero(%struct.TYPE_42__* %32, i32 72)
  %584 = load i64, i64* @DHCP_NACK, align 8
  %585 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 0
  store i64 %584, i64* %585, align 8
  %586 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %587 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 2
  store i32 %588, i32* %589, align 8
  %590 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 6
  %591 = load i32, i32* %590, align 8
  %592 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %593 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %592, i32 0, i32 5
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @StrCpy(i32 %591, i32 4, i32 %594)
  %596 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %597 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 4
  store i32 %598, i32* %599, align 8
  %600 = call i32* @BuildDhcpOption(%struct.TYPE_42__* %32)
  store i32* %600, i32** %33, align 8
  %601 = load i32*, i32** %33, align 8
  %602 = icmp ne i32* %601, null
  br i1 %602, label %603, label %647

603:                                              ; preds = %582
  %604 = load i32*, i32** %33, align 8
  %605 = call i32* @BuildDhcpOptionsBuf(i32* %604)
  store i32* %605, i32** %34, align 8
  %606 = load i32*, i32** %34, align 8
  %607 = icmp ne i32* %606, null
  br i1 %607, label %608, label %644

608:                                              ; preds = %603
  %609 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %610 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %610, i32 0, i32 0
  %612 = load %struct.TYPE_46__*, %struct.TYPE_46__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = trunc i64 %614 to i32
  store i32 %615, i32* %35, align 4
  %616 = load i32, i32* %35, align 4
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %608
  store i32 -1, i32* %35, align 4
  br label %619

619:                                              ; preds = %618, %608
  %620 = load %struct.TYPE_52__*, %struct.TYPE_52__** %3, align 8
  %621 = load i32, i32* %10, align 4
  %622 = load i32, i32* %35, align 4
  %623 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %624 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %624, i32 0, i32 0
  %626 = load %struct.TYPE_48__*, %struct.TYPE_48__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @Endian16(i32 %628)
  %630 = load i32, i32* %14, align 4
  %631 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %631, i32 0, i32 4
  %633 = load i32, i32* %632, align 4
  %634 = load i32*, i32** %34, align 8
  %635 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %636 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %635, i32 0, i32 3
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %639 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 4
  %641 = call i32 @VirtualDhcpSend(%struct.TYPE_52__* %620, i32 %621, i32 %622, i32 %629, i32 %630, i32 %633, i32* %634, i32 %637, i32 %640)
  %642 = load i32*, i32** %34, align 8
  %643 = call i32 @FreeBuf(i32* %642)
  br label %644

644:                                              ; preds = %619, %603
  %645 = load i32*, i32** %33, align 8
  %646 = call i32 @FreeDhcpOptions(i32* %645)
  br label %647

647:                                              ; preds = %644, %582
  br label %648

648:                                              ; preds = %647, %581
  br label %649

649:                                              ; preds = %648, %166, %149
  %650 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %651 = call i32 @Free(%struct.TYPE_42__* %650)
  br label %652

652:                                              ; preds = %649, %146, %131, %124, %102, %44
  ret void
}

declare dso_local i8* @Endian32(i32) #1

declare dso_local i64 @Cmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_42__* @ParseDhcpOptionList(i32*, i32) #1

declare dso_local i64 @StartWith(i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_42__*) #1

declare dso_local i32 @ServeDhcpDiscover(%struct.TYPE_52__*, i32*, i64) #1

declare dso_local i32 @ServeDhcpRequest(%struct.TYPE_52__*, i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_43__* @SearchDhcpLeaseByIp(%struct.TYPE_52__*, i32) #1

declare dso_local i32 @FreeDhcpLease(%struct.TYPE_43__*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_43__* @SearchDhcpPendingLeaseByIp(%struct.TYPE_52__*, i32) #1

declare dso_local %struct.TYPE_43__* @NewDhcpLease(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_43__*) #1

declare dso_local i32 @MacToStr(i8*, i32, i32) #1

declare dso_local i32 @IPToStr32(i8*, i32, i32) #1

declare dso_local i32 @NLog(%struct.TYPE_52__*, i8*, i64, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_54__*, %struct.TYPE_54__*, i32) #1

declare dso_local i64 @IsIpcMacAddress(i32*) #1

declare dso_local i32 @UINTToIP(%struct.TYPE_54__*, i32) #1

declare dso_local i32 @IPAnd4(%struct.TYPE_54__*, %struct.TYPE_54__*, %struct.TYPE_54__*) #1

declare dso_local i32* @GetBestClasslessRoute(%struct.TYPE_54__*, %struct.TYPE_54__*) #1

declare dso_local i32 @SubnetMaskToInt(%struct.TYPE_54__*) #1

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #1

declare dso_local i32 @IPToStr(i8*, i32, %struct.TYPE_54__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @Debug(i8*, i8*, i8*) #1

declare dso_local i32* @BuildDhcpOption(%struct.TYPE_42__*) #1

declare dso_local i32* @BuildDhcpOptionsBuf(i32*) #1

declare dso_local i32 @VirtualDhcpSend(%struct.TYPE_52__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @FreeDhcpOptions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
