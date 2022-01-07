; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_dynaddr_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_dynaddr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr_wrap = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.pfi_dynaddr* }
%struct.pfi_dynaddr = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.pf_ruleset = type { i32 }

@PF_TABLE_NAME_SIZE = common dso_local global i32 0, align 4
@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PF_ADDR_DYNIFTL = common dso_local global i64 0, align 8
@pfi_addr_pl = common dso_local global i32 0, align 4
@PR_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@IFG_ALL = common dso_local global i32 0, align 4
@PFI_KIF_REF_RULE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@PFI_AFLAG_NETWORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c":network\00", align 1
@PFI_AFLAG_BROADCAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c":broadcast\00", align 1
@PFI_AFLAG_PEER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c":peer\00", align 1
@PFI_AFLAG_NOALIAS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c":0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@PF_RESERVED_ANCHOR = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfi_dynaddr_setup(%struct.pf_addr_wrap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_addr_wrap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pfi_dynaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pf_ruleset*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pf_addr_wrap* %0, %struct.pf_addr_wrap** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @PF_TABLE_NAME_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @pf_lock, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  %19 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %20 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PF_ADDR_DYNIFTL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %221

25:                                               ; preds = %2
  %26 = load i32, i32* @PR_WAITOK, align 4
  %27 = call %struct.pfi_dynaddr* @pool_get(i32* @pfi_addr_pl, i32 %26)
  store %struct.pfi_dynaddr* %27, %struct.pfi_dynaddr** %6, align 8
  %28 = icmp eq %struct.pfi_dynaddr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %221

30:                                               ; preds = %25
  %31 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %32 = call i32 @bzero(%struct.pfi_dynaddr* %31, i32 32)
  %33 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %34 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i32, i32* @IFG_ALL, align 4
  %41 = call i8* @pfi_kif_get(i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_13__*
  %43 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %44 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %43, i32 0, i32 2
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %44, align 8
  br label %54

45:                                               ; preds = %30
  %46 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %47 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @pfi_kif_get(i32 %49)
  %51 = bitcast i8* %50 to %struct.TYPE_13__*
  %52 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %53 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %52, i32 0, i32 2
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %53, align 8
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %56 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = icmp eq %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %190

60:                                               ; preds = %54
  %61 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %62 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %65 = call i32 @pfi_kif_ref(%struct.TYPE_13__* %63, i32 %64)
  %66 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %67 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i32 @pfi_unmask(i32* %69)
  %71 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %72 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @AF_INET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %78 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %83 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %82, i32 0, i32 0
  store i32 128, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %76, %60
  %85 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %86 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = trunc i64 %13 to i32
  %90 = call i32 @strlcpy(i8* %15, i32 %88, i32 %89)
  %91 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %92 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PFI_AFLAG_NETWORK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = trunc i64 %13 to i32
  %99 = call i32 @strlcat(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %84
  %101 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %102 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PFI_AFLAG_BROADCAST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = trunc i64 %13 to i32
  %109 = call i32 @strlcat(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %112 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PFI_AFLAG_PEER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = trunc i64 %13 to i32
  %119 = call i32 @strlcat(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %122 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PFI_AFLAG_NOALIAS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = trunc i64 %13 to i32
  %129 = call i32 @strlcat(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %132 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 128
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = call i32 @strlen(i8* %15)
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %15, i64 %137
  %139 = call i32 @strlen(i8* %15)
  %140 = sext i32 %139 to i64
  %141 = sub i64 %13, %140
  %142 = trunc i64 %141 to i32
  %143 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %144 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @snprintf(i8* %138, i32 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %135, %130
  %148 = load i32, i32* @PF_RESERVED_ANCHOR, align 4
  %149 = call %struct.pf_ruleset* @pf_find_or_create_ruleset(i32 %148)
  store %struct.pf_ruleset* %149, %struct.pf_ruleset** %9, align 8
  %150 = icmp eq %struct.pf_ruleset* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 1, i32* %10, align 4
  br label %190

152:                                              ; preds = %147
  %153 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %154 = call %struct.TYPE_12__* @pfr_attach_table(%struct.pf_ruleset* %153, i8* %15)
  %155 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %156 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %155, i32 0, i32 3
  store %struct.TYPE_12__* %154, %struct.TYPE_12__** %156, align 8
  %157 = icmp eq %struct.TYPE_12__* %154, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 1, i32* %10, align 4
  br label %190

159:                                              ; preds = %152
  %160 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %161 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %162 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %161, i32 0, i32 3
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %160
  store i32 %166, i32* %164, align 4
  %167 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %168 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %171 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* %5, align 8
  %173 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %174 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  %175 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %176 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %175, i32 0, i32 2
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %180 = load i32, i32* @entry, align 4
  %181 = call i32 @TAILQ_INSERT_TAIL(i32* %178, %struct.pfi_dynaddr* %179, i32 %180)
  %182 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %183 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %184 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  store %struct.pfi_dynaddr* %182, %struct.pfi_dynaddr** %185, align 8
  %186 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %187 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %186, i32 0, i32 2
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = call i32 @pfi_kif_update(%struct.TYPE_13__* %188)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %221

190:                                              ; preds = %158, %151, %59
  %191 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %192 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %191, i32 0, i32 3
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = icmp ne %struct.TYPE_12__* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %197 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %196, i32 0, i32 3
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = call i32 @pfr_detach_table(%struct.TYPE_12__* %198)
  br label %200

200:                                              ; preds = %195, %190
  %201 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %202 = icmp ne %struct.pf_ruleset* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %205 = call i32 @pf_remove_if_empty_ruleset(%struct.pf_ruleset* %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %208 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %207, i32 0, i32 2
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = icmp ne %struct.TYPE_13__* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %213 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %212, i32 0, i32 2
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %216 = call i32 @pfi_kif_unref(%struct.TYPE_13__* %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %206
  %218 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %6, align 8
  %219 = call i32 @pool_put(i32* @pfi_addr_pl, %struct.pfi_dynaddr* %218)
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %221

221:                                              ; preds = %217, %159, %29, %24
  %222 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #2

declare dso_local %struct.pfi_dynaddr* @pool_get(i32*, i32) #2

declare dso_local i32 @bzero(%struct.pfi_dynaddr*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i8* @pfi_kif_get(i32) #2

declare dso_local i32 @pfi_kif_ref(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @pfi_unmask(i32*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.pf_ruleset* @pf_find_or_create_ruleset(i32) #2

declare dso_local %struct.TYPE_12__* @pfr_attach_table(%struct.pf_ruleset*, i8*) #2

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pfi_dynaddr*, i32) #2

declare dso_local i32 @pfi_kif_update(%struct.TYPE_13__*) #2

declare dso_local i32 @pfr_detach_table(%struct.TYPE_12__*) #2

declare dso_local i32 @pf_remove_if_empty_ruleset(%struct.pf_ruleset*) #2

declare dso_local i32 @pfi_kif_unref(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @pool_put(i32*, %struct.pfi_dynaddr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
