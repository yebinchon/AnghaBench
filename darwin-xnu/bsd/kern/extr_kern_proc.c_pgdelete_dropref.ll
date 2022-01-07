; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgdelete_dropref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgdelete_dropref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.session*, %struct.session* }
%struct.session = type { i64, i64, i32, i64, i32, i32, %struct.session*, i32, i32 }
%struct.pgrp = type { i64, i64, i32, i64, i32, i32, %struct.pgrp*, i32, i32 }

@PGRP_FLAG_TERMINATE = common dso_local global i32 0, align 4
@PGRP_FLAG_DEAD = common dso_local global i32 0, align 4
@pg_hash = common dso_local global i32 0, align 4
@TTY_NULL = common dso_local global %struct.tty* null, align 8
@NO_PID = common dso_local global i32 0, align 4
@S_LIST_TERM = common dso_local global i32 0, align 4
@S_LIST_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"pg_deleteref: manipulating refs of already terminating session\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"pg_deleteref: terminating already terminated session\00", align 1
@s_hash = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"pg_deleteref: freeing session in use\00", align 1
@proc_lck_grp = common dso_local global i32 0, align 4
@M_SESSION = common dso_local global i32 0, align 4
@M_PGRP = common dso_local global i32 0, align 4
@proc_mlock_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pgrp*)* @pgdelete_dropref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgdelete_dropref(%struct.pgrp* %0) #0 {
  %2 = alloca %struct.pgrp*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.session*, align 8
  store %struct.pgrp* %0, %struct.pgrp** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %7 = bitcast %struct.pgrp* %6 to %struct.session*
  %8 = call i32 @pgrp_lock(%struct.session* %7)
  %9 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %10 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %16 = bitcast %struct.pgrp* %15 to %struct.session*
  %17 = call i32 @pgrp_unlock(%struct.session* %16)
  %18 = call i32 (...) @proc_list_lock()
  %19 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %20 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %27 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %14
  %31 = call i32 (...) @proc_list_unlock()
  br label %186

32:                                               ; preds = %25
  %33 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %34 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %35 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %39 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 (...) @proc_list_unlock()
  br label %186

44:                                               ; preds = %32
  %45 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %46 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %47 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %51 = bitcast %struct.pgrp* %50 to %struct.session*
  %52 = load i32, i32* @pg_hash, align 4
  %53 = call i32 @LIST_REMOVE(%struct.session* %51, i32 %52)
  %54 = call i32 (...) @proc_list_unlock()
  %55 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %56 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %55, i32 0, i32 6
  %57 = load %struct.pgrp*, %struct.pgrp** %56, align 8
  %58 = bitcast %struct.pgrp* %57 to %struct.session*
  %59 = call %struct.tty* @SESSION_TP(%struct.session* %58)
  store %struct.tty* %59, %struct.tty** %3, align 8
  %60 = load %struct.tty*, %struct.tty** %3, align 8
  %61 = load %struct.tty*, %struct.tty** @TTY_NULL, align 8
  %62 = icmp ne %struct.tty* %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %44
  %64 = load %struct.tty*, %struct.tty** %3, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 1
  %66 = load %struct.session*, %struct.session** %65, align 8
  %67 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %68 = bitcast %struct.pgrp* %67 to %struct.session*
  %69 = icmp eq %struct.session* %66, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %63
  %71 = load %struct.tty*, %struct.tty** %3, align 8
  %72 = call i32 @tty_lock(%struct.tty* %71)
  %73 = load %struct.tty*, %struct.tty** %3, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 1
  %75 = load %struct.session*, %struct.session** %74, align 8
  %76 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %77 = bitcast %struct.pgrp* %76 to %struct.session*
  %78 = icmp eq %struct.session* %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load %struct.tty*, %struct.tty** %3, align 8
  %81 = getelementptr inbounds %struct.tty, %struct.tty* %80, i32 0, i32 1
  store %struct.session* null, %struct.session** %81, align 8
  %82 = load i32, i32* @NO_PID, align 4
  %83 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %84 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %83, i32 0, i32 6
  %85 = load %struct.pgrp*, %struct.pgrp** %84, align 8
  %86 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %85, i32 0, i32 7
  store i32 %82, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %70
  %88 = load %struct.tty*, %struct.tty** %3, align 8
  %89 = call i32 @tty_unlock(%struct.tty* %88)
  br label %90

90:                                               ; preds = %87, %63
  br label %91

91:                                               ; preds = %90, %44
  %92 = call i32 (...) @proc_list_lock()
  %93 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %94 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %93, i32 0, i32 6
  %95 = load %struct.pgrp*, %struct.pgrp** %94, align 8
  %96 = bitcast %struct.pgrp* %95 to %struct.session*
  store %struct.session* %96, %struct.session** %5, align 8
  %97 = load %struct.session*, %struct.session** %5, align 8
  %98 = getelementptr inbounds %struct.session, %struct.session* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @S_LIST_TERM, align 4
  %101 = load i32, i32* @S_LIST_DEAD, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %91
  %108 = load %struct.session*, %struct.session** %5, align 8
  %109 = getelementptr inbounds %struct.session, %struct.session* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %175

113:                                              ; preds = %107
  %114 = load %struct.session*, %struct.session** %5, align 8
  %115 = getelementptr inbounds %struct.session, %struct.session* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @S_LIST_TERM, align 4
  %118 = load i32, i32* @S_LIST_DEAD, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %113
  %125 = load i32, i32* @S_LIST_TERM, align 4
  %126 = load %struct.session*, %struct.session** %5, align 8
  %127 = getelementptr inbounds %struct.session, %struct.session* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.session*, %struct.session** %5, align 8
  %131 = call %struct.tty* @SESSION_TP(%struct.session* %130)
  store %struct.tty* %131, %struct.tty** %3, align 8
  %132 = load %struct.session*, %struct.session** %5, align 8
  %133 = load i32, i32* @s_hash, align 4
  %134 = call i32 @LIST_REMOVE(%struct.session* %132, i32 %133)
  %135 = call i32 (...) @proc_list_unlock()
  %136 = load %struct.tty*, %struct.tty** %3, align 8
  %137 = load %struct.tty*, %struct.tty** @TTY_NULL, align 8
  %138 = icmp ne %struct.tty* %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %124
  %140 = load %struct.tty*, %struct.tty** %3, align 8
  %141 = call i32 @tty_lock(%struct.tty* %140)
  %142 = load %struct.tty*, %struct.tty** %3, align 8
  %143 = getelementptr inbounds %struct.tty, %struct.tty* %142, i32 0, i32 0
  %144 = load %struct.session*, %struct.session** %143, align 8
  %145 = load %struct.session*, %struct.session** %5, align 8
  %146 = icmp eq %struct.session* %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load %struct.tty*, %struct.tty** %3, align 8
  %149 = getelementptr inbounds %struct.tty, %struct.tty* %148, i32 0, i32 0
  store %struct.session* null, %struct.session** %149, align 8
  br label %150

150:                                              ; preds = %147, %139
  %151 = load %struct.tty*, %struct.tty** %3, align 8
  %152 = call i32 @tty_unlock(%struct.tty* %151)
  br label %153

153:                                              ; preds = %150, %124
  %154 = call i32 (...) @proc_list_lock()
  %155 = load i32, i32* @S_LIST_DEAD, align 4
  %156 = load %struct.session*, %struct.session** %5, align 8
  %157 = getelementptr inbounds %struct.session, %struct.session* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.session*, %struct.session** %5, align 8
  %161 = getelementptr inbounds %struct.session, %struct.session* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %153
  %165 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %153
  %167 = call i32 (...) @proc_list_unlock()
  %168 = load %struct.session*, %struct.session** %5, align 8
  %169 = getelementptr inbounds %struct.session, %struct.session* %168, i32 0, i32 5
  %170 = load i32, i32* @proc_lck_grp, align 4
  %171 = call i32 @lck_mtx_destroy(i32* %169, i32 %170)
  %172 = load %struct.session*, %struct.session** %5, align 8
  %173 = load i32, i32* @M_SESSION, align 4
  %174 = call i32 @FREE_ZONE(%struct.session* %172, i32 56, i32 %173)
  br label %177

175:                                              ; preds = %107
  %176 = call i32 (...) @proc_list_unlock()
  br label %177

177:                                              ; preds = %175, %166
  %178 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %179 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %178, i32 0, i32 4
  %180 = load i32, i32* @proc_lck_grp, align 4
  %181 = call i32 @lck_mtx_destroy(i32* %179, i32 %180)
  %182 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %183 = bitcast %struct.pgrp* %182 to %struct.session*
  %184 = load i32, i32* @M_PGRP, align 4
  %185 = call i32 @FREE_ZONE(%struct.session* %183, i32 56, i32 %184)
  br label %186

186:                                              ; preds = %177, %42, %30
  ret void
}

declare dso_local i32 @pgrp_lock(%struct.session*) #1

declare dso_local i32 @pgrp_unlock(%struct.session*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.session*, i32) #1

declare dso_local %struct.tty* @SESSION_TP(%struct.session*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @FREE_ZONE(%struct.session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
