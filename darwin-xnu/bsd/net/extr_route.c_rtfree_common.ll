; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtfree_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtfree_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node*, %struct.radix_node_head*)* }
%struct.radix_node = type opaque
%struct.rtentry = type { i64, i32, i32, %struct.TYPE_6__*, i32 (%struct.TYPE_6__*)*, %struct.ifaddr*, %struct.rtentry*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.ifaddr = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.radix_node.0 = type { i32 }
%struct.rtentry_dbg = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rt %p invalid refcnt %d\00", align 1
@RTF_IFREF = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@RTF_UP = common dso_local global i32 0, align 4
@RTF_DEAD = common dso_local global i32 0, align 4
@RNF_ACTIVE = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"rt %p freed while in radix tree\0A\00", align 1
@rttrash = common dso_local global i32 0, align 4
@rte_debug = common dso_local global i32 0, align 4
@RTD_DEBUG = common dso_local global i32 0, align 4
@rttrash_head = common dso_local global i32 0, align 4
@rtd_trash_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, i64)* @rtfree_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtfree_common(%struct.rtentry* %0, i64 %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radix_node_head*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @rnh_lock, align 4
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %16)
  %18 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %19 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %18)
  %20 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %21 = call i64 @rtunref(%struct.rtentry* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %25 = call i32 @RT_UNLOCK(%struct.rtentry* %24)
  br label %210

26:                                               ; preds = %15
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %31 = call i32 @RT_ADDREF_LOCKED(%struct.rtentry* %30)
  %32 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %33 = call i32 @RT_UNLOCK(%struct.rtentry* %32)
  %34 = load i32, i32* @rnh_lock, align 4
  %35 = call i32 @lck_mtx_lock(i32 %34)
  %36 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %37 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %36)
  %38 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %39 = call i64 @rtunref(%struct.rtentry* %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %43 = call i32 @RT_UNLOCK(%struct.rtentry* %42)
  br label %204

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %47 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %46)
  %48 = load i32, i32* @rnh_lock, align 4
  %49 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %50 = call i32 @LCK_MTX_ASSERT(i32 %48, i32 %49)
  %51 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %52 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %57 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %58 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, %struct.rtentry*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.rtentry* %56, i64 %59)
  br label %61

61:                                               ; preds = %55, %45
  %62 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %63 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RTF_IFREF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %72 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %73 = call %struct.TYPE_6__* @rt_key(%struct.rtentry* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %71, i64 %75
  %77 = load %struct.radix_node_head*, %struct.radix_node_head** %76, align 8
  store %struct.radix_node_head* %77, %struct.radix_node_head** %5, align 8
  %78 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %79 = icmp ne %struct.radix_node_head* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %61
  %81 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %82 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %81, i32 0, i32 0
  %83 = load i32 (%struct.radix_node*, %struct.radix_node_head*)*, i32 (%struct.radix_node*, %struct.radix_node_head*)** %82, align 8
  %84 = icmp ne i32 (%struct.radix_node*, %struct.radix_node_head*)* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %87 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %86, i32 0, i32 0
  %88 = load i32 (%struct.radix_node*, %struct.radix_node_head*)*, i32 (%struct.radix_node*, %struct.radix_node_head*)** %87, align 8
  %89 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %90 = bitcast %struct.rtentry* %89 to %struct.radix_node.0*
  %91 = bitcast %struct.radix_node.0* %90 to %struct.radix_node*
  %92 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %93 = call i32 %88(%struct.radix_node* %91, %struct.radix_node_head* %92)
  br label %94

94:                                               ; preds = %85, %80, %61
  %95 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %96 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RTF_UP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %200, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @RTF_DEAD, align 4
  %103 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %104 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %108 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %107, i32 0, i32 7
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RNF_ACTIVE, align 4
  %113 = load i32, i32* @RNF_ROOT, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %119 = call i32 (i8*, %struct.rtentry*, ...) @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.rtentry* %118)
  br label %120

120:                                              ; preds = %117, %101
  %121 = call i32 @OSDecrementAtomic(i32* @rttrash)
  %122 = load i32, i32* @rte_debug, align 4
  %123 = load i32, i32* @RTD_DEBUG, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %128 = bitcast %struct.rtentry* %127 to %struct.rtentry_dbg*
  %129 = load i32, i32* @rtd_trash_link, align 4
  %130 = call i32 @TAILQ_REMOVE(i32* @rttrash_head, %struct.rtentry_dbg* %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %120
  %132 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %133 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %132, i32 0, i32 6
  %134 = load %struct.rtentry*, %struct.rtentry** %133, align 8
  store %struct.rtentry* %134, %struct.rtentry** %6, align 8
  %135 = icmp ne %struct.rtentry* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %138 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %137, i32 0, i32 6
  store %struct.rtentry* null, %struct.rtentry** %138, align 8
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %141 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %140, i32 0, i32 5
  %142 = load %struct.ifaddr*, %struct.ifaddr** %141, align 8
  store %struct.ifaddr* %142, %struct.ifaddr** %7, align 8
  %143 = icmp ne %struct.ifaddr* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %146 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %145, i32 0, i32 5
  store %struct.ifaddr* null, %struct.ifaddr** %146, align 8
  br label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %149 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = icmp ne %struct.TYPE_6__* %150, null
  br i1 %151, label %152, label %173

152:                                              ; preds = %147
  %153 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %154 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %153, i32 0, i32 4
  %155 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %154, align 8
  %156 = icmp ne i32 (%struct.TYPE_6__*)* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %159 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %158, i32 0, i32 4
  %160 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %159, align 8
  %161 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %162 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %161, i32 0, i32 3
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = call i32 %160(%struct.TYPE_6__* %163)
  br label %170

165:                                              ; preds = %152
  %166 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %167 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %166, i32 0, i32 3
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = call i32 @R_Free(%struct.TYPE_6__* %168)
  br label %170

170:                                              ; preds = %165, %157
  %171 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %172 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %171, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %172, align 8
  br label %173

173:                                              ; preds = %170, %147
  %174 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %175 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %174, i32 0, i32 2
  %176 = call i32 @eventhandler_lists_ctxt_destroy(i32* %175)
  %177 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %178 = call i32 @RT_UNLOCK(%struct.rtentry* %177)
  %179 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %180 = call i32 @rte_lock_destroy(%struct.rtentry* %179)
  %181 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %182 = icmp ne %struct.rtentry* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %185 = call i32 @rtfree_locked(%struct.rtentry* %184)
  br label %186

186:                                              ; preds = %183, %173
  %187 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %188 = icmp ne %struct.ifaddr* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %191 = call i32 @IFA_REMREF(%struct.ifaddr* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %194 = call %struct.TYPE_6__* @rt_key(%struct.rtentry* %193)
  %195 = call i32 @R_Free(%struct.TYPE_6__* %194)
  %196 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %197 = call i32 @nstat_route_detach(%struct.rtentry* %196)
  %198 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %199 = call i32 @rte_free(%struct.rtentry* %198)
  br label %203

200:                                              ; preds = %94
  %201 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %202 = call i32 @RT_UNLOCK(%struct.rtentry* %201)
  br label %203

203:                                              ; preds = %200, %192
  br label %204

204:                                              ; preds = %203, %41
  %205 = load i64, i64* %4, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @rnh_lock, align 4
  %209 = call i32 @lck_mtx_unlock(i32 %208)
  br label %210

210:                                              ; preds = %23, %207, %204
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i64 @rtunref(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @panic(i8*, %struct.rtentry*, ...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.TYPE_6__* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @OSDecrementAtomic(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.rtentry_dbg*, i32) #1

declare dso_local i32 @R_Free(%struct.TYPE_6__*) #1

declare dso_local i32 @eventhandler_lists_ctxt_destroy(i32*) #1

declare dso_local i32 @rte_lock_destroy(%struct.rtentry*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local i32 @nstat_route_detach(%struct.rtentry*) #1

declare dso_local i32 @rte_free(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
