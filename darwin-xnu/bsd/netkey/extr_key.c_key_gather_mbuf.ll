; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_gather_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_gather_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { i64 }
%struct.sadb_msghdr = type { i32*, i32*, i32**, i32* }

@.str = private unnamed_addr constant [34 x i8] c"null pointer passed to key_gather\00", align 1
@SADB_EXT_MAX = common dso_local global i32 0, align 4
@SADB_EXT_RESERVED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, %struct.sadb_msghdr*, i32, i32, i32*)* @key_gather_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @key_gather_mbuf(%struct.mbuf* %0, %struct.sadb_msghdr* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sadb_msghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store %struct.sadb_msghdr* %1, %struct.sadb_msghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %18 = icmp eq %struct.mbuf* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %21 = icmp eq %struct.sadb_msghdr* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %180, %24
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %183

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @SADB_EXT_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %29
  br label %215

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @SADB_EXT_RESERVED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %48 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %180

52:                                               ; preds = %46, %42
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @SADB_EXT_RESERVED, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %58 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %67 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %56
  br label %180

75:                                               ; preds = %65, %52
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @SADB_EXT_RESERVED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = call i32 @PFKEY_ALIGN8(i32 4)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %82 = load i32, i32* @M_WAITOK, align 4
  %83 = load i32, i32* @MT_DATA, align 4
  %84 = call i32 @MGETHDR(%struct.mbuf* %81, i32 %82, i32 %83)
  %85 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %86 = icmp ne %struct.mbuf* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %215

88:                                               ; preds = %79
  %89 = load i32, i32* %16, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %93, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %95 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %96 = load i32, i32* @caddr_t, align 4
  %97 = call i32 @mtod(%struct.mbuf* %95, i32 %96)
  %98 = call i32 @m_copydata(%struct.mbuf* %94, i32 0, i32 4, i32 %97)
  br label %166

99:                                               ; preds = %75
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %99
  %104 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %105 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call %struct.mbuf* @key_alloc_mbuf(i32 %111)
  store %struct.mbuf* %112, %struct.mbuf** %15, align 8
  %113 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %114 = icmp ne %struct.mbuf* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 3
  %118 = load %struct.mbuf*, %struct.mbuf** %117, align 8
  %119 = icmp ne %struct.mbuf* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115, %103
  %121 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %122 = icmp ne %struct.mbuf* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %125 = call i32 @m_freem(%struct.mbuf* %124)
  br label %126

126:                                              ; preds = %123, %120
  br label %215

127:                                              ; preds = %115
  %128 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %129 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %130 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %137 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %144 = load i32, i32* @caddr_t, align 4
  %145 = call i32 @mtod(%struct.mbuf* %143, i32 %144)
  %146 = call i32 @m_copydata(%struct.mbuf* %128, i32 %135, i32 %142, i32 %145)
  br label %165

147:                                              ; preds = %99
  %148 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %149 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %150 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %8, align 8
  %157 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @M_WAITOK, align 4
  %164 = call %struct.mbuf* @m_copym(%struct.mbuf* %148, i32 %155, i32 %162, i32 %163)
  store %struct.mbuf* %164, %struct.mbuf** %15, align 8
  br label %165

165:                                              ; preds = %147, %127
  br label %166

166:                                              ; preds = %165, %88
  %167 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %168 = icmp eq %struct.mbuf* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %215

170:                                              ; preds = %166
  %171 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %172 = icmp ne %struct.mbuf* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %175 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %176 = call i32 @m_cat(%struct.mbuf* %174, %struct.mbuf* %175)
  br label %179

177:                                              ; preds = %170
  %178 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %178, %struct.mbuf** %14, align 8
  br label %179

179:                                              ; preds = %177, %173
  br label %180

180:                                              ; preds = %179, %74, %51
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %25

183:                                              ; preds = %25
  %184 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %185 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @M_PKTHDR, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %213

190:                                              ; preds = %183
  %191 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %192 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %194, %struct.mbuf** %15, align 8
  br label %195

195:                                              ; preds = %208, %190
  %196 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %197 = icmp ne %struct.mbuf* %196, null
  br i1 %197, label %198, label %212

198:                                              ; preds = %195
  %199 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %200 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %204 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, %202
  store i64 %207, i64* %205, align 8
  br label %208

208:                                              ; preds = %198
  %209 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %210 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %209, i32 0, i32 3
  %211 = load %struct.mbuf*, %struct.mbuf** %210, align 8
  store %struct.mbuf* %211, %struct.mbuf** %15, align 8
  br label %195

212:                                              ; preds = %195
  br label %213

213:                                              ; preds = %212, %183
  %214 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %214, %struct.mbuf** %6, align 8
  br label %218

215:                                              ; preds = %169, %126, %87, %41
  %216 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %217 = call i32 @m_freem(%struct.mbuf* %216)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %218

218:                                              ; preds = %215, %213
  %219 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %219
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @key_alloc_mbuf(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_copym(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
