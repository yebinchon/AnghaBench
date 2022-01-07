; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbdrop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i32, %struct.mbuf*, i32*, %struct.mbuf*, %struct.TYPE_8__*, i64, i64 }
%struct.mbuf = type { i32, i32, i64, %struct.mbuf*, %struct.mbuf* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@DBG_FNC_SBDROP = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sbdrop - count not zero\0A\00", align 1
@SB_RECV = common dso_local global i32 0, align 4
@SOF_ENABLE_MSGS = common dso_local global i32 0, align 4
@SB_SNDBYTE_CNT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i64 0, align 8
@MT_HEADER = common dso_local global i64 0, align 8
@MT_OOBDATA = common dso_local global i64 0, align 8
@EV_RWBYTES = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@PF_MULTIPATH = common dso_local global i32 0, align 4
@SOF1_POST_FALLBACK_SYNC = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbdrop(%struct.sockbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %11 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %10, i32 0, i32 4
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %5, align 8
  %13 = icmp ne %struct.mbuf* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 3
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.mbuf* [ %17, %14 ], [ null, %18 ]
  store %struct.mbuf* %20, %struct.mbuf** %8, align 8
  %21 = load i32, i32* @DBG_FNC_SBDROP, align 4
  %22 = load i32, i32* @DBG_FUNC_START, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @KERNEL_DEBUG(i32 %23, %struct.sockbuf* %24, i32 %25, i32 0, i32 0, i32 0)
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %27, %struct.mbuf** %9, align 8
  store %struct.mbuf* %27, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  br label %28

28:                                               ; preds = %131, %66, %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %144

31:                                               ; preds = %28
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = icmp eq %struct.mbuf* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %39 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SB_RECV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %37
  %50 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %51 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %50, i32 0, i32 5
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SOF_ENABLE_MSGS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %60 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %59, i32 0, i32 5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %49, %37
  br label %144

66:                                               ; preds = %34
  %67 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %67, %struct.mbuf** %9, align 8
  store %struct.mbuf* %67, %struct.mbuf** %5, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 3
  %70 = load %struct.mbuf*, %struct.mbuf** %69, align 8
  store %struct.mbuf* %70, %struct.mbuf** %8, align 8
  br label %28

71:                                               ; preds = %31
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %91 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %95 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SB_SNDBYTE_CNT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %77
  %101 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %102 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %101, i32 0, i32 5
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @inp_decr_sndbytes_total(%struct.TYPE_8__* %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %77
  %107 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MT_DATA, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MT_HEADER, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MT_OOBDATA, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %127 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %118, %112, %106
  br label %144

131:                                              ; preds = %71
  %132 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %133 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %4, align 4
  %137 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %139 = call i32 @sbfree(%struct.sockbuf* %137, %struct.mbuf* %138)
  %140 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %140, %struct.mbuf** %7, align 8
  %141 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 4
  %143 = load %struct.mbuf*, %struct.mbuf** %142, align 8
  store %struct.mbuf* %143, %struct.mbuf** %5, align 8
  br label %28

144:                                              ; preds = %130, %65, %28
  br label %145

145:                                              ; preds = %155, %144
  %146 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %147 = icmp ne %struct.mbuf* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br label %153

153:                                              ; preds = %148, %145
  %154 = phi i1 [ false, %145 ], [ %152, %148 ]
  br i1 %154, label %155, label %163

155:                                              ; preds = %153
  %156 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %157 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %158 = call i32 @sbfree(%struct.sockbuf* %156, %struct.mbuf* %157)
  %159 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %159, %struct.mbuf** %7, align 8
  %160 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %161 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %160, i32 0, i32 4
  %162 = load %struct.mbuf*, %struct.mbuf** %161, align 8
  store %struct.mbuf* %162, %struct.mbuf** %5, align 8
  br label %145

163:                                              ; preds = %153
  %164 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %165 = icmp ne %struct.mbuf* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %168, align 8
  %169 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %170, align 8
  %171 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %172 = call i32 @m_freem_list(%struct.mbuf* %171)
  br label %173

173:                                              ; preds = %166, %163
  %174 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %175 = icmp ne %struct.mbuf* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %178 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %179 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %178, i32 0, i32 4
  store %struct.mbuf* %177, %struct.mbuf** %179, align 8
  %180 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %181 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %182 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %181, i32 0, i32 3
  store %struct.mbuf* %180, %struct.mbuf** %182, align 8
  br label %187

183:                                              ; preds = %173
  %184 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %185 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %186 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %185, i32 0, i32 4
  store %struct.mbuf* %184, %struct.mbuf** %186, align 8
  br label %187

187:                                              ; preds = %183, %176
  %188 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %189 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %188, i32 0, i32 4
  %190 = load %struct.mbuf*, %struct.mbuf** %189, align 8
  store %struct.mbuf* %190, %struct.mbuf** %5, align 8
  %191 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %192 = icmp eq %struct.mbuf* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %195 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %194, i32 0, i32 3
  store i32* null, i32** %195, align 8
  %196 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %197 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %196, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %197, align 8
  br label %208

198:                                              ; preds = %187
  %199 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %200 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %199, i32 0, i32 3
  %201 = load %struct.mbuf*, %struct.mbuf** %200, align 8
  %202 = icmp eq %struct.mbuf* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %205 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %206 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %205, i32 0, i32 2
  store %struct.mbuf* %204, %struct.mbuf** %206, align 8
  br label %207

207:                                              ; preds = %203, %198
  br label %208

208:                                              ; preds = %207, %193
  %209 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %210 = load i32, i32* @EV_RWBYTES, align 4
  %211 = call i32 @postevent(i32 0, %struct.sockbuf* %209, i32 %210)
  %212 = load i32, i32* @DBG_FNC_SBDROP, align 4
  %213 = load i32, i32* @DBG_FUNC_END, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %216 = call i32 @KERNEL_DEBUG(i32 %214, %struct.sockbuf* %215, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG(i32, %struct.sockbuf*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @inp_decr_sndbytes_total(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sbfree(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @m_freem_list(%struct.mbuf*) #1

declare dso_local i32 @postevent(i32, %struct.sockbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
