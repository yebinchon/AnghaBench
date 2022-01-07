; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, %struct.tty*, i32, %struct.vnode* }
%struct.tty = type { i32 }
%struct.vnode = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, %struct.proc*)* }
%struct.proc = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, %struct.proc*)* }
%struct.vnop_close_args = type { i32, i32, %struct.vnode* }

@S_IFCHR = common dso_local global i32 0, align 4
@SESSION_NULL = common dso_local global %struct.session* null, align 8
@TTY_NULL = common dso_local global %struct.tty* null, align 8
@NO_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"negative open count (c, %u, %u)\00", align 1
@IO_REVOKE = common dso_local global i32 0, align 4
@cdevsw = common dso_local global %struct.TYPE_5__* null, align 8
@S_IFBLK = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@BUF_WRITE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"negative open count (b, %u, %u)\00", align 1
@bdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"spec_close: not special\00", align 1
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_close(%struct.vnop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_close_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.tty*, align 8
  store %struct.vnop_close_args* %0, %struct.vnop_close_args** %3, align 8
  %11 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %12 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %11, i32 0, i32 2
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.proc* @vfs_context_proc(i32 %22)
  store %struct.proc* %23, %struct.proc** %8, align 8
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %207 [
    i32 128, label %27
    i32 129, label %132
  ]

27:                                               ; preds = %1
  %28 = load %struct.proc*, %struct.proc** %8, align 8
  %29 = call %struct.session* @proc_session(%struct.proc* %28)
  store %struct.session* %29, %struct.session** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @S_IFCHR, align 4
  %32 = call i32 @devsw_lock(i32 %30, i32 %31)
  %33 = load %struct.session*, %struct.session** %9, align 8
  %34 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %35 = icmp ne %struct.session* %33, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %27
  %37 = load %struct.vnode*, %struct.vnode** %4, align 8
  %38 = load %struct.session*, %struct.session** %9, align 8
  %39 = getelementptr inbounds %struct.session, %struct.session* %38, i32 0, i32 3
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  %41 = icmp eq %struct.vnode* %37, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %36
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = call i32 @vcount(%struct.vnode* %43)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %90

46:                                               ; preds = %42
  %47 = load %struct.tty*, %struct.tty** @TTY_NULL, align 8
  store %struct.tty* %47, %struct.tty** %10, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @S_IFCHR, align 4
  %50 = call i32 @devsw_unlock(i32 %48, i32 %49)
  %51 = load %struct.session*, %struct.session** %9, align 8
  %52 = call i32 @session_lock(%struct.session* %51)
  %53 = load %struct.vnode*, %struct.vnode** %4, align 8
  %54 = load %struct.session*, %struct.session** %9, align 8
  %55 = getelementptr inbounds %struct.session, %struct.session* %54, i32 0, i32 3
  %56 = load %struct.vnode*, %struct.vnode** %55, align 8
  %57 = icmp eq %struct.vnode* %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.session*, %struct.session** %9, align 8
  %60 = call %struct.tty* @SESSION_TP(%struct.session* %59)
  store %struct.tty* %60, %struct.tty** %10, align 8
  %61 = load %struct.session*, %struct.session** %9, align 8
  %62 = getelementptr inbounds %struct.session, %struct.session* %61, i32 0, i32 3
  store %struct.vnode* null, %struct.vnode** %62, align 8
  %63 = load %struct.session*, %struct.session** %9, align 8
  %64 = getelementptr inbounds %struct.session, %struct.session* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.tty*, %struct.tty** @TTY_NULL, align 8
  %66 = load %struct.session*, %struct.session** %9, align 8
  %67 = getelementptr inbounds %struct.session, %struct.session* %66, i32 0, i32 1
  store %struct.tty* %65, %struct.tty** %67, align 8
  %68 = load i32, i32* @NO_PID, align 4
  %69 = load %struct.session*, %struct.session** %9, align 8
  %70 = getelementptr inbounds %struct.session, %struct.session* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %58, %46
  %72 = load %struct.session*, %struct.session** %9, align 8
  %73 = call i32 @session_unlock(%struct.session* %72)
  %74 = load %struct.tty*, %struct.tty** %10, align 8
  %75 = load %struct.tty*, %struct.tty** @TTY_NULL, align 8
  %76 = icmp ne %struct.tty* %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.tty*, %struct.tty** %10, align 8
  %79 = call i32 @tty_lock(%struct.tty* %78)
  %80 = load %struct.tty*, %struct.tty** %10, align 8
  %81 = call i32 @ttyclrpgrphup(%struct.tty* %80)
  %82 = load %struct.tty*, %struct.tty** %10, align 8
  %83 = call i32 @tty_unlock(%struct.tty* %82)
  %84 = load %struct.tty*, %struct.tty** %10, align 8
  %85 = call i32 @ttyfree(%struct.tty* %84)
  br label %86

86:                                               ; preds = %77, %71
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @S_IFCHR, align 4
  %89 = call i32 @devsw_lock(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %42, %36
  %91 = load %struct.session*, %struct.session** %9, align 8
  %92 = call i32 @session_rele(%struct.session* %91)
  br label %93

93:                                               ; preds = %90, %27
  %94 = load %struct.vnode*, %struct.vnode** %4, align 8
  %95 = getelementptr inbounds %struct.vnode, %struct.vnode* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @major(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @minor(i32 %104)
  %106 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %103, i32 %105)
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.vnode*, %struct.vnode** %4, align 8
  %109 = call i32 @vcount(%struct.vnode* %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @IO_REVOKE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111, %107
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cdevsw, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @major(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32 (i32, i32, i32, %struct.proc*)*, i32 (i32, i32, i32, %struct.proc*)** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @S_IFCHR, align 4
  %126 = load %struct.proc*, %struct.proc** %8, align 8
  %127 = call i32 %122(i32 %123, i32 %124, i32 %125, %struct.proc* %126)
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %116, %111
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @S_IFCHR, align 4
  %131 = call i32 @devsw_unlock(i32 %129, i32 %130)
  br label %210

132:                                              ; preds = %1
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @S_IFBLK, align 4
  %135 = call i32 @devsw_lock(i32 %133, i32 %134)
  %136 = load %struct.vnode*, %struct.vnode** %4, align 8
  %137 = call i32 @vcount(%struct.vnode* %136)
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %149

139:                                              ; preds = %132
  %140 = load %struct.vnode*, %struct.vnode** %4, align 8
  %141 = getelementptr inbounds %struct.vnode, %struct.vnode* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @S_IFBLK, align 4
  %148 = call i32 @devsw_unlock(i32 %146, i32 %147)
  store i32 0, i32* %2, align 4
  br label %212

149:                                              ; preds = %132
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @S_IFBLK, align 4
  %152 = call i32 @devsw_unlock(i32 %150, i32 %151)
  %153 = load %struct.vnode*, %struct.vnode** %4, align 8
  %154 = load i32, i32* @MNT_WAIT, align 4
  %155 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %156 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @spec_fsync_internal(%struct.vnode* %153, i32 %154, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %212

162:                                              ; preds = %149
  %163 = load %struct.vnode*, %struct.vnode** %4, align 8
  %164 = load i32, i32* @BUF_WRITE_DATA, align 4
  %165 = call i32 @buf_invalidateblks(%struct.vnode* %163, i32 %164, i32 0, i32 0)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %2, align 4
  br label %212

170:                                              ; preds = %162
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @S_IFBLK, align 4
  %173 = call i32 @devsw_lock(i32 %171, i32 %172)
  %174 = load %struct.vnode*, %struct.vnode** %4, align 8
  %175 = getelementptr inbounds %struct.vnode, %struct.vnode* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %170
  %182 = load i32, i32* %5, align 4
  %183 = call i64 @major(i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @minor(i32 %184)
  %186 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %183, i32 %185)
  br label %187

187:                                              ; preds = %181, %170
  %188 = load %struct.vnode*, %struct.vnode** %4, align 8
  %189 = call i32 @vcount(%struct.vnode* %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdevsw, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i64 @major(i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32 (i32, i32, i32, %struct.proc*)*, i32 (i32, i32, i32, %struct.proc*)** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @S_IFBLK, align 4
  %201 = load %struct.proc*, %struct.proc** %8, align 8
  %202 = call i32 %197(i32 %198, i32 %199, i32 %200, %struct.proc* %201)
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %191, %187
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @S_IFBLK, align 4
  %206 = call i32 @devsw_unlock(i32 %204, i32 %205)
  br label %210

207:                                              ; preds = %1
  %208 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i32, i32* @EBADF, align 4
  store i32 %209, i32* %2, align 4
  br label %212

210:                                              ; preds = %203, %128
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %210, %207, %168, %160, %139
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local %struct.session* @proc_session(%struct.proc*) #1

declare dso_local i32 @devsw_lock(i32, i32) #1

declare dso_local i32 @vcount(%struct.vnode*) #1

declare dso_local i32 @devsw_unlock(i32, i32) #1

declare dso_local i32 @session_lock(%struct.session*) #1

declare dso_local %struct.tty* @SESSION_TP(%struct.session*) #1

declare dso_local i32 @session_unlock(%struct.session*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttyclrpgrphup(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @ttyfree(%struct.tty*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @spec_fsync_internal(%struct.vnode*, i32, i32) #1

declare dso_local i32 @buf_invalidateblks(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
