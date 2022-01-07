; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgrp_replace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgrp_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.proc = type { i32, i32, %struct.pgrp* }

@P_LIST_PGRPTRANS = common dso_local global i32 0, align 4
@P_LIST_PGRPTRWAIT = common dso_local global i32 0, align 4
@proc_list_mlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"proc_pgrp\00", align 1
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"pgrp_replace: oldpg NULL\00", align 1
@PGRPID_DEAD = common dso_local global i32 0, align 4
@P_LIST_INPGRP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"pgprp: -ve membercnt pgprp:%p p:%p\0A\00", align 1
@p_pglist = common dso_local global i32 0, align 4
@PGRP_FLAG_TERMINATE = common dso_local global i32 0, align 4
@PGRP_FLAG_DEAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"pgrp_add : pgrp is dead adding process\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.pgrp*)* @pgrp_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgrp_replace(%struct.proc* %0, %struct.pgrp* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.pgrp*, align 8
  %5 = alloca %struct.pgrp*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.pgrp* %1, %struct.pgrp** %4, align 8
  %6 = call i32 (...) @proc_list_lock()
  br label %7

7:                                                ; preds = %15, %2
  %8 = load %struct.proc*, %struct.proc** %3, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %7
  %16 = load i32, i32* @P_LIST_PGRPTRWAIT, align 4
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.proc*, %struct.proc** %3, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 1
  %23 = load i32, i32* @proc_list_mlock, align 4
  %24 = call i32 @msleep(i32* %22, i32 %23, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 2
  %33 = load %struct.pgrp*, %struct.pgrp** %32, align 8
  store %struct.pgrp* %33, %struct.pgrp** %5, align 8
  %34 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %35 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %36 = icmp eq %struct.pgrp* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %25
  %40 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %41 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @PGRPID_DEAD, align 4
  %45 = load %struct.proc*, %struct.proc** %3, align 8
  %46 = getelementptr inbounds %struct.proc, %struct.proc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @P_LIST_INPGRP, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.proc*, %struct.proc** %3, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.proc*, %struct.proc** %3, align 8
  %54 = getelementptr inbounds %struct.proc, %struct.proc* %53, i32 0, i32 2
  store %struct.pgrp* null, %struct.pgrp** %54, align 8
  %55 = call i32 (...) @proc_list_unlock()
  %56 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %57 = call i32 @pgrp_lock(%struct.pgrp* %56)
  %58 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %59 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %63 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %39
  %67 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %68 = load %struct.proc*, %struct.proc** %3, align 8
  %69 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.pgrp* %67, %struct.proc* %68)
  br label %70

70:                                               ; preds = %66, %39
  %71 = load %struct.proc*, %struct.proc** %3, align 8
  %72 = load i32, i32* @p_pglist, align 4
  %73 = call i32 @LIST_REMOVE(%struct.proc* %71, i32 %72)
  %74 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %75 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %81 = call i32 @pgrp_unlock(%struct.pgrp* %80)
  %82 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %83 = call i32 @pgdelete_dropref(%struct.pgrp* %82)
  br label %89

84:                                               ; preds = %70
  %85 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %86 = call i32 @pgrp_unlock(%struct.pgrp* %85)
  %87 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %88 = call i32 @pg_rele(%struct.pgrp* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = call i32 (...) @proc_list_lock()
  %91 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %92 = load %struct.proc*, %struct.proc** %3, align 8
  %93 = getelementptr inbounds %struct.proc, %struct.proc* %92, i32 0, i32 2
  store %struct.pgrp* %91, %struct.pgrp** %93, align 8
  %94 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %95 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.proc*, %struct.proc** %3, align 8
  %98 = getelementptr inbounds %struct.proc, %struct.proc* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @P_LIST_INPGRP, align 4
  %100 = load %struct.proc*, %struct.proc** %3, align 8
  %101 = getelementptr inbounds %struct.proc, %struct.proc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %105 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %108 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %89
  %114 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %117 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %113, %89
  %121 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %122 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %120
  %131 = call i32 (...) @proc_list_unlock()
  %132 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %133 = call i32 @pgrp_lock(%struct.pgrp* %132)
  %134 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %135 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %139 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %138, i32 0, i32 2
  %140 = load %struct.proc*, %struct.proc** %3, align 8
  %141 = load i32, i32* @p_pglist, align 4
  %142 = call i32 @LIST_INSERT_HEAD(%struct.TYPE_2__* %139, %struct.proc* %140, i32 %141)
  %143 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %144 = call i32 @pgrp_unlock(%struct.pgrp* %143)
  %145 = call i32 (...) @proc_list_lock()
  %146 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %147 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %150 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %130
  %156 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %157 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %164 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %160, %155, %130
  %168 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.proc*, %struct.proc** %3, align 8
  %171 = getelementptr inbounds %struct.proc, %struct.proc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.proc*, %struct.proc** %3, align 8
  %175 = getelementptr inbounds %struct.proc, %struct.proc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @P_LIST_PGRPTRWAIT, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @P_LIST_PGRPTRWAIT, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %167
  %182 = load i32, i32* @P_LIST_PGRPTRWAIT, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.proc*, %struct.proc** %3, align 8
  %185 = getelementptr inbounds %struct.proc, %struct.proc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.proc*, %struct.proc** %3, align 8
  %189 = getelementptr inbounds %struct.proc, %struct.proc* %188, i32 0, i32 1
  %190 = call i32 @wakeup(i32* %189)
  br label %191

191:                                              ; preds = %181, %167
  %192 = call i32 (...) @proc_list_unlock()
  ret void
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @pgrp_lock(%struct.pgrp*) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @pgrp_unlock(%struct.pgrp*) #1

declare dso_local i32 @pgdelete_dropref(%struct.pgrp*) #1

declare dso_local i32 @pg_rele(%struct.pgrp*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.TYPE_2__*, %struct.proc*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
