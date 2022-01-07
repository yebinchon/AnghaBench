; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_insert_src_node.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_insert_src_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32, i32* }
%struct.pf_src_node = type { i64, %struct.TYPE_7__, i32, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { %struct.pf_rule* }
%struct.pf_rule = type { i32, i64, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pf_addr = type { i32 }

@PFRULE_RULESRCTRACK = common dso_local global i32 0, align 4
@PF_POOL_STICKYADDR = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SCNT_SRC_NODE_SEARCH = common dso_local global i64 0, align 8
@pf_src_tree = common dso_local global i32 0, align 4
@tree_src_tracking = common dso_local global i32 0, align 4
@pf_src_tree_pl = common dso_local global i32 0, align 4
@PR_WAITOK = common dso_local global i32 0, align 4
@LCNT_SRCNODES = common dso_local global i64 0, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"pf: src_tree insert failed: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SCNT_SRC_NODE_INSERT = common dso_local global i64 0, align 8
@LCNT_SRCSTATES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_insert_src_node(%struct.pf_src_node** %0, %struct.pf_rule* %1, %struct.pf_addr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_src_node**, align 8
  %7 = alloca %struct.pf_rule*, align 8
  %8 = alloca %struct.pf_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pf_src_node, align 8
  store %struct.pf_src_node** %0, %struct.pf_src_node*** %6, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %7, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %12 = load %struct.pf_src_node*, %struct.pf_src_node** %11, align 8
  %13 = icmp eq %struct.pf_src_node* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %10, i32 0, i32 5
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %10, i32 0, i32 4
  %18 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @PF_ACPY(i32* %17, %struct.pf_addr* %18, i8* %19)
  %21 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %22 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PFRULE_RULESRCTRACK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %14
  %28 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %29 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PF_POOL_STICKYADDR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27, %14
  %36 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %37 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %10, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store %struct.pf_rule* %36, %struct.pf_rule** %38, align 8
  br label %42

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.pf_rule* null, %struct.pf_rule** %41, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 3), align 8
  %44 = load i64, i64* @SCNT_SRC_NODE_SEARCH, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @pf_src_tree, align 4
  %49 = call %struct.pf_src_node* @RB_FIND(i32 %48, i32* @tree_src_tracking, %struct.pf_src_node* %10)
  %50 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  store %struct.pf_src_node* %49, %struct.pf_src_node** %50, align 8
  br label %51

51:                                               ; preds = %42, %4
  %52 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %53 = load %struct.pf_src_node*, %struct.pf_src_node** %52, align 8
  %54 = icmp eq %struct.pf_src_node* %53, null
  br i1 %54, label %55, label %190

55:                                               ; preds = %51
  %56 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %57 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %62 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %65 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60, %55
  %69 = load i32, i32* @PR_WAITOK, align 4
  %70 = call %struct.pf_src_node* @pool_get(i32* @pf_src_tree_pl, i32 %69)
  %71 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  store %struct.pf_src_node* %70, %struct.pf_src_node** %71, align 8
  br label %78

72:                                               ; preds = %60
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 1), align 8
  %74 = load i64, i64* @LCNT_SRCNODES, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %68
  %79 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %80 = load %struct.pf_src_node*, %struct.pf_src_node** %79, align 8
  %81 = icmp eq %struct.pf_src_node* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %212

83:                                               ; preds = %78
  %84 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %85 = load %struct.pf_src_node*, %struct.pf_src_node** %84, align 8
  %86 = call i32 @bzero(%struct.pf_src_node* %85, i32 48)
  %87 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %88 = load %struct.pf_src_node*, %struct.pf_src_node** %87, align 8
  %89 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %88, i32 0, i32 6
  %90 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %91 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %95 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pf_init_threshold(i32* %89, i32 %93, i32 %97)
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %101 = load %struct.pf_src_node*, %struct.pf_src_node** %100, align 8
  %102 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %101, i32 0, i32 5
  store i8* %99, i8** %102, align 8
  %103 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %104 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PFRULE_RULESRCTRACK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %83
  %110 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %111 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @PF_POOL_STICKYADDR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %109, %83
  %118 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %119 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %120 = load %struct.pf_src_node*, %struct.pf_src_node** %119, align 8
  %121 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store %struct.pf_rule* %118, %struct.pf_rule** %122, align 8
  br label %128

123:                                              ; preds = %109
  %124 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %125 = load %struct.pf_src_node*, %struct.pf_src_node** %124, align 8
  %126 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store %struct.pf_rule* null, %struct.pf_rule** %127, align 8
  br label %128

128:                                              ; preds = %123, %117
  %129 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %130 = load %struct.pf_src_node*, %struct.pf_src_node** %129, align 8
  %131 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %130, i32 0, i32 4
  %132 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @PF_ACPY(i32* %131, %struct.pf_addr* %132, i8* %133)
  %135 = load i32, i32* @pf_src_tree, align 4
  %136 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %137 = load %struct.pf_src_node*, %struct.pf_src_node** %136, align 8
  %138 = call i32* @RB_INSERT(i32 %135, i32* @tree_src_tracking, %struct.pf_src_node* %137)
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %128
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 0), align 8
  %142 = load i64, i64* @PF_DEBUG_MISC, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %147 = load %struct.pf_src_node*, %struct.pf_src_node** %146, align 8
  %148 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %147, i32 0, i32 4
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @pf_print_host(i32* %148, i32 0, i8* %149)
  %151 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %144, %140
  %153 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %154 = load %struct.pf_src_node*, %struct.pf_src_node** %153, align 8
  %155 = call i32 @pool_put(i32* @pf_src_tree_pl, %struct.pf_src_node* %154)
  store i32 -1, i32* %5, align 4
  br label %212

156:                                              ; preds = %128
  %157 = call i32 (...) @pf_time_second()
  %158 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %159 = load %struct.pf_src_node*, %struct.pf_src_node** %158, align 8
  %160 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  %161 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %162 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %165 = load %struct.pf_src_node*, %struct.pf_src_node** %164, align 8
  %166 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %168 = load %struct.pf_src_node*, %struct.pf_src_node** %167, align 8
  %169 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load %struct.pf_rule*, %struct.pf_rule** %170, align 8
  %172 = icmp ne %struct.pf_rule* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %156
  %174 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %175 = load %struct.pf_src_node*, %struct.pf_src_node** %174, align 8
  %176 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load %struct.pf_rule*, %struct.pf_rule** %177, align 8
  %179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %173, %156
  %183 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 3), align 8
  %184 = load i64, i64* @SCNT_SRC_NODE_INSERT, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 2), align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 2), align 8
  br label %211

190:                                              ; preds = %51
  %191 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %192 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load %struct.pf_src_node**, %struct.pf_src_node*** %6, align 8
  %197 = load %struct.pf_src_node*, %struct.pf_src_node** %196, align 8
  %198 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %201 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp sge i64 %199, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %195
  %205 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_status, i32 0, i32 1), align 8
  %206 = load i64, i64* @LCNT_SRCSTATES, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  store i32 -1, i32* %5, align 4
  br label %212

210:                                              ; preds = %195, %190
  br label %211

211:                                              ; preds = %210, %182
  store i32 0, i32* %5, align 4
  br label %212

212:                                              ; preds = %211, %204, %152, %82
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @PF_ACPY(i32*, %struct.pf_addr*, i8*) #1

declare dso_local %struct.pf_src_node* @RB_FIND(i32, i32*, %struct.pf_src_node*) #1

declare dso_local %struct.pf_src_node* @pool_get(i32*, i32) #1

declare dso_local i32 @bzero(%struct.pf_src_node*, i32) #1

declare dso_local i32 @pf_init_threshold(i32*, i32, i32) #1

declare dso_local i32* @RB_INSERT(i32, i32*, %struct.pf_src_node*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pf_print_host(i32*, i32, i8*) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_src_node*) #1

declare dso_local i32 @pf_time_second(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
