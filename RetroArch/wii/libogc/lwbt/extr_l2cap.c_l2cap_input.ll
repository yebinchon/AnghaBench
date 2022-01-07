; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_seg = type { i64, %struct.pbuf*, %struct.TYPE_3__*, %struct.hci_acl_hdr*, i32, %struct.l2cap_seg* }
%struct.pbuf = type { i64, %struct.hci_acl_hdr* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }
%struct.hci_acl_hdr = type { i32, i32, i32 }
%struct.bd_addr = type { i32 }

@HCI_ACL_HDR_LEN = common dso_local global i64 0, align 8
@l2cap_insegs = common dso_local global %struct.l2cap_seg* null, align 8
@L2CAP_ACL_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"l2cap_input: Continuing fragment. Discard packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"l2cap_input: Continuing fragment. Length exceeds L2CAP hdr length. Discard packet\0A\00", align 1
@l2cap_segs = common dso_local global i32 0, align 4
@L2CAP_ACL_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"l2cap_input: Start of L2CAP packet. Discard previous packet\0A\00", align 1
@L2CAP_HDR_LEN = common dso_local global i64 0, align 8
@l2cap_active_pcbs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"l2cap_input: Discard packet\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"l2cap_input: Get continuing segments\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"l2cap_input: Illegal null cid\0A\00", align 1
@PBUF_RAW = common dso_local global i32 0, align 4
@L2CAP_CMD_REJ_SIZE = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@L2CAP_INVALID_CID = common dso_local global i32 0, align 4
@L2CAP_CMD_REJ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"l2cap_input: Forward packet to higher layer\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_input(%struct.pbuf* %0, %struct.bd_addr* %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca %struct.l2cap_seg*, align 8
  %6 = alloca %struct.hci_acl_hdr*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store %struct.bd_addr* %1, %struct.bd_addr** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %11 = load i64, i64* @HCI_ACL_HDR_LEN, align 8
  %12 = call i32 @btpbuf_header(%struct.pbuf* %10, i64 %11)
  %13 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i32 0, i32 1
  %15 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %14, align 8
  store %struct.hci_acl_hdr* %15, %struct.hci_acl_hdr** %6, align 8
  %16 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %17 = load i64, i64* @HCI_ACL_HDR_LEN, align 8
  %18 = sub nsw i64 0, %17
  %19 = call i32 @btpbuf_header(%struct.pbuf* %16, i64 %18)
  %20 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %21 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @btpbuf_realloc(%struct.pbuf* %20, i32 %23)
  %25 = load %struct.l2cap_seg*, %struct.l2cap_seg** @l2cap_insegs, align 8
  store %struct.l2cap_seg* %25, %struct.l2cap_seg** %5, align 8
  br label %26

26:                                               ; preds = %37, %2
  %27 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %28 = icmp ne %struct.l2cap_seg* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %31 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %32 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %31, i32 0, i32 4
  %33 = call i64 @bd_addr_cmp(%struct.bd_addr* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %39 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %38, i32 0, i32 5
  %40 = load %struct.l2cap_seg*, %struct.l2cap_seg** %39, align 8
  store %struct.l2cap_seg* %40, %struct.l2cap_seg** %5, align 8
  br label %26

41:                                               ; preds = %35, %26
  %42 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %43 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le16toh(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le16toh(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %55 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 3
  %61 = load i32, i32* @L2CAP_ACL_CONT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %41
  %64 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %65 = icmp eq %struct.l2cap_seg* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i32 @LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %69 = call i32 @btpbuf_free(%struct.pbuf* %68)
  br label %339

70:                                               ; preds = %63
  %71 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %72 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %71, i32 0, i32 1
  %73 = load %struct.pbuf*, %struct.pbuf** %72, align 8
  %74 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %81 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %70
  %85 = call i32 @LOG(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %87 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %86, i32 0, i32 1
  %88 = load %struct.pbuf*, %struct.pbuf** %87, align 8
  %89 = call i32 @btpbuf_free(%struct.pbuf* %88)
  %90 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %91 = call i32 @L2CAP_SEG_RMV(%struct.l2cap_seg** @l2cap_insegs, %struct.l2cap_seg* %90)
  %92 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %93 = call i32 @btmemb_free(i32* @l2cap_segs, %struct.l2cap_seg* %92)
  %94 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %95 = call i32 @btpbuf_free(%struct.pbuf* %94)
  br label %339

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %99 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %98, i32 0, i32 1
  %100 = load %struct.pbuf*, %struct.pbuf** %99, align 8
  %101 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %102 = call i32 @btpbuf_chain(%struct.pbuf* %100, %struct.pbuf* %101)
  %103 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %104 = call i32 @btpbuf_free(%struct.pbuf* %103)
  br label %215

105:                                              ; preds = %41
  %106 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %6, align 8
  %107 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 12
  %110 = and i32 %109, 3
  %111 = load i32, i32* @L2CAP_ACL_START, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %202

113:                                              ; preds = %105
  %114 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %115 = icmp ne %struct.l2cap_seg* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = call i32 @LOG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %119 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %118, i32 0, i32 1
  %120 = load %struct.pbuf*, %struct.pbuf** %119, align 8
  %121 = call i32 @btpbuf_free(%struct.pbuf* %120)
  br label %130

122:                                              ; preds = %113
  %123 = call %struct.l2cap_seg* @btmemb_alloc(i32* @l2cap_segs)
  store %struct.l2cap_seg* %123, %struct.l2cap_seg** %5, align 8
  %124 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %125 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %124, i32 0, i32 4
  %126 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %127 = call i32 @bd_addr_set(i32* %125, %struct.bd_addr* %126)
  %128 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %129 = call i32 @L2CAP_SEG_REG(%struct.l2cap_seg** @l2cap_insegs, %struct.l2cap_seg* %128)
  br label %130

130:                                              ; preds = %122, %116
  %131 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %132 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %133 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %132, i32 0, i32 1
  store %struct.pbuf* %131, %struct.pbuf** %133, align 8
  %134 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %135 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %134, i32 0, i32 1
  %136 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %135, align 8
  %137 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %138 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %137, i32 0, i32 3
  store %struct.hci_acl_hdr* %136, %struct.hci_acl_hdr** %138, align 8
  %139 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %140 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %139, i32 0, i32 3
  %141 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %140, align 8
  %142 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le16toh(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %147 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %146, i32 0, i32 3
  %148 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %147, align 8
  %149 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %148, i32 0, i32 2
  store i32 %145, i32* %149, align 4
  %150 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %151 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %150, i32 0, i32 3
  %152 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %151, align 8
  %153 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16toh(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %158 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %157, i32 0, i32 3
  %159 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %158, align 8
  %160 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  %161 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %162 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %161, i32 0, i32 3
  %163 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %162, align 8
  %164 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @L2CAP_HDR_LEN, align 8
  %168 = add nsw i64 %166, %167
  %169 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %170 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @l2cap_active_pcbs, align 8
  %172 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %173 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %172, i32 0, i32 2
  store %struct.TYPE_3__* %171, %struct.TYPE_3__** %173, align 8
  br label %174

174:                                              ; preds = %193, %130
  %175 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %176 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %175, i32 0, i32 2
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = icmp ne %struct.TYPE_3__* %177, null
  br i1 %178, label %179, label %201

179:                                              ; preds = %174
  %180 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %181 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %180, i32 0, i32 2
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %186 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %185, i32 0, i32 3
  %187 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %186, align 8
  %188 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %184, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %201

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %195 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %194, i32 0, i32 2
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %200 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %199, i32 0, i32 2
  store %struct.TYPE_3__* %198, %struct.TYPE_3__** %200, align 8
  br label %174

201:                                              ; preds = %191, %174
  br label %214

202:                                              ; preds = %105
  %203 = call i32 @LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %204 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %205 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %204, i32 0, i32 1
  %206 = load %struct.pbuf*, %struct.pbuf** %205, align 8
  %207 = call i32 @btpbuf_free(%struct.pbuf* %206)
  %208 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %209 = call i32 @L2CAP_SEG_RMV(%struct.l2cap_seg** @l2cap_insegs, %struct.l2cap_seg* %208)
  %210 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %211 = call i32 @btmemb_free(i32* @l2cap_segs, %struct.l2cap_seg* %210)
  %212 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %213 = call i32 @btpbuf_free(%struct.pbuf* %212)
  br label %339

214:                                              ; preds = %201
  br label %215

215:                                              ; preds = %214, %97
  %216 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %217 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %216, i32 0, i32 1
  %218 = load %struct.pbuf*, %struct.pbuf** %217, align 8
  %219 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %222 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %220, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = call i32 @LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %339

227:                                              ; preds = %215
  %228 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %229 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %228, i32 0, i32 3
  %230 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %229, align 8
  %231 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  switch i32 %232, label %263 [
    i32 129, label %233
    i32 128, label %239
    i32 130, label %258
  ]

233:                                              ; preds = %227
  %234 = call i32 @LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %235 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %236 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %235, i32 0, i32 1
  %237 = load %struct.pbuf*, %struct.pbuf** %236, align 8
  %238 = call i32 @btpbuf_free(%struct.pbuf* %237)
  br label %334

239:                                              ; preds = %227
  %240 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %241 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %240, i32 0, i32 1
  %242 = load %struct.pbuf*, %struct.pbuf** %241, align 8
  %243 = load i64, i64* @L2CAP_HDR_LEN, align 8
  %244 = sub nsw i64 0, %243
  %245 = call i32 @btpbuf_header(%struct.pbuf* %242, i64 %244)
  %246 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %247 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %246, i32 0, i32 1
  %248 = load %struct.pbuf*, %struct.pbuf** %247, align 8
  %249 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %250 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %249, i32 0, i32 3
  %251 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %250, align 8
  %252 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %253 = call i32 @l2cap_process_sig(%struct.pbuf* %248, %struct.hci_acl_hdr* %251, %struct.bd_addr* %252)
  %254 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %255 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %254, i32 0, i32 1
  %256 = load %struct.pbuf*, %struct.pbuf** %255, align 8
  %257 = call i32 @btpbuf_free(%struct.pbuf* %256)
  br label %334

258:                                              ; preds = %227
  %259 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %260 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %259, i32 0, i32 1
  %261 = load %struct.pbuf*, %struct.pbuf** %260, align 8
  %262 = call i32 @btpbuf_free(%struct.pbuf* %261)
  br label %334

263:                                              ; preds = %227
  %264 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %265 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %264, i32 0, i32 3
  %266 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %265, align 8
  %267 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %268, 64
  br i1 %269, label %275, label %270

270:                                              ; preds = %263
  %271 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %272 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %271, i32 0, i32 2
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = icmp eq %struct.TYPE_3__* %273, null
  br i1 %274, label %275, label %317

275:                                              ; preds = %270, %263
  %276 = load i32, i32* @PBUF_RAW, align 4
  %277 = load i32, i32* @L2CAP_CMD_REJ_SIZE, align 4
  %278 = add nsw i32 %277, 4
  %279 = load i32, i32* @PBUF_RAM, align 4
  %280 = call %struct.pbuf* @btpbuf_alloc(i32 %276, i32 %278, i32 %279)
  store %struct.pbuf* %280, %struct.pbuf** %7, align 8
  %281 = icmp ne %struct.pbuf* %280, null
  br i1 %281, label %282, label %312

282:                                              ; preds = %275
  %283 = load i32, i32* @L2CAP_INVALID_CID, align 4
  %284 = call i32 @htole16(i32 %283)
  %285 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %286 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %285, i32 0, i32 1
  %287 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %286, align 8
  %288 = bitcast %struct.hci_acl_hdr* %287 to i32*
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 %284, i32* %289, align 4
  %290 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %291 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %290, i32 0, i32 3
  %292 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %291, align 8
  %293 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @htole16(i32 %294)
  %296 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %297 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %296, i32 0, i32 1
  %298 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %297, align 8
  %299 = bitcast %struct.hci_acl_hdr* %298 to i32*
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  store i32 %295, i32* %300, align 4
  %301 = call i32 @htole16(i32 129)
  %302 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %303 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %302, i32 0, i32 1
  %304 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %303, align 8
  %305 = bitcast %struct.hci_acl_hdr* %304 to i32*
  %306 = getelementptr inbounds i32, i32* %305, i64 2
  store i32 %301, i32* %306, align 4
  %307 = load i32, i32* @L2CAP_CMD_REJ, align 4
  %308 = call i32 (...) @l2cap_next_sigid()
  %309 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %310 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %311 = call i32 @l2cap_signal(i32* null, i32 %307, i32 %308, %struct.bd_addr* %309, %struct.pbuf* %310)
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %282, %275
  %313 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %314 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %313, i32 0, i32 1
  %315 = load %struct.pbuf*, %struct.pbuf** %314, align 8
  %316 = call i32 @btpbuf_free(%struct.pbuf* %315)
  br label %334

317:                                              ; preds = %270
  %318 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %319 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %318, i32 0, i32 1
  %320 = load %struct.pbuf*, %struct.pbuf** %319, align 8
  %321 = load i64, i64* @L2CAP_HDR_LEN, align 8
  %322 = sub nsw i64 0, %321
  %323 = call i32 @btpbuf_header(%struct.pbuf* %320, i64 %322)
  %324 = call i32 @LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %325 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %326 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %325, i32 0, i32 2
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %326, align 8
  %328 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %329 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %328, i32 0, i32 1
  %330 = load %struct.pbuf*, %struct.pbuf** %329, align 8
  %331 = load i32, i32* @ERR_OK, align 4
  %332 = load i32, i32* %8, align 4
  %333 = call i32 @L2CA_ACTION_RECV(%struct.TYPE_3__* %327, %struct.pbuf* %330, i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %317, %312, %258, %239, %233
  %335 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %336 = call i32 @L2CAP_SEG_RMV(%struct.l2cap_seg** @l2cap_insegs, %struct.l2cap_seg* %335)
  %337 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %338 = call i32 @btmemb_free(i32* @l2cap_segs, %struct.l2cap_seg* %337)
  br label %339

339:                                              ; preds = %334, %225, %202, %84, %66
  ret void
}

declare dso_local i32 @btpbuf_header(%struct.pbuf*, i64) #1

declare dso_local i32 @btpbuf_realloc(%struct.pbuf*, i32) #1

declare dso_local i64 @bd_addr_cmp(%struct.bd_addr*, i32*) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

declare dso_local i32 @L2CAP_SEG_RMV(%struct.l2cap_seg**, %struct.l2cap_seg*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.l2cap_seg*) #1

declare dso_local i32 @btpbuf_chain(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local %struct.l2cap_seg* @btmemb_alloc(i32*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @L2CAP_SEG_REG(%struct.l2cap_seg**, %struct.l2cap_seg*) #1

declare dso_local i32 @l2cap_process_sig(%struct.pbuf*, %struct.hci_acl_hdr*, %struct.bd_addr*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @l2cap_signal(i32*, i32, i32, %struct.bd_addr*, %struct.pbuf*) #1

declare dso_local i32 @l2cap_next_sigid(...) #1

declare dso_local i32 @L2CA_ACTION_RECV(%struct.TYPE_3__*, %struct.pbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
