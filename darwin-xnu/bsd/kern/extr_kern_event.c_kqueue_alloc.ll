; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { %struct.proc*, i32, i32, i32 }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i64 }
%struct.kqworkq = type { i32, i32, i32, i32, %struct.kqueue, i32, %struct.TYPE_4__, i32*, %struct.kqueue, %struct.TYPE_3__*, i32*, i32, %struct.kqueue }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.kqworkloop = type { i32, i32, i32, i32, %struct.kqueue, i32, %struct.TYPE_4__, i32*, %struct.kqueue, %struct.TYPE_3__*, i32*, i32, %struct.kqueue }
%struct.kqfile = type { i32, i32, i32, i32, %struct.kqueue, i32, %struct.TYPE_4__, i32*, %struct.kqueue, %struct.TYPE_3__*, i32*, i32, %struct.kqueue }

@KEVENT_FLAG_WORKQ = common dso_local global i32 0, align 4
@kqworkq_zone = common dso_local global i32 0, align 4
@KQ_WORKQ = common dso_local global i32 0, align 4
@KQWQ_NBUCKETS = common dso_local global i32 0, align 4
@KQWQ_QOS_MANAGER = common dso_local global i32 0, align 4
@KQR_THOVERCOMMIT = common dso_local global i32 0, align 4
@SYNC_POLICY_FIFO = common dso_local global i32 0, align 4
@KEVENT_FLAG_WORKLOOP = common dso_local global i32 0, align 4
@kqworkloop_zone = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQ_DYNAMIC = common dso_local global i32 0, align 4
@KQR_WORKLOOP = common dso_local global i32 0, align 4
@KQWL_NBUCKETS = common dso_local global i32 0, align 4
@kq_lck_grp = common dso_local global i32 0, align 4
@kq_lck_attr = common dso_local global i32 0, align 4
@kqfile_zone = common dso_local global i32 0, align 4
@SYNC_POLICY_PREPOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kqueue* @kqueue_alloc(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.kqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kqworkq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kqworkloop*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.kqfile*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 0
  %17 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  store %struct.filedesc* %17, %struct.filedesc** %6, align 8
  store %struct.kqueue* null, %struct.kqueue** %7, align 8
  store i8* null, i8** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @KEVENT_FLAG_WORKQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %96

22:                                               ; preds = %2
  %23 = load i32, i32* @kqworkq_zone, align 4
  %24 = call i64 @zalloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.kqworkq*
  store %struct.kqworkq* %25, %struct.kqworkq** %10, align 8
  %26 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %27 = icmp eq %struct.kqworkq* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.kqueue* null, %struct.kqueue** %3, align 8
  br label %214

29:                                               ; preds = %22
  %30 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %31 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %30, i32 0, i32 12
  store %struct.kqueue* %31, %struct.kqueue** %7, align 8
  %32 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %33 = call i32 @bzero(%struct.kqworkq* %32, i32 136)
  %34 = load i32, i32* @KQ_WORKQ, align 4
  %35 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %36 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %49, %29
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @KQWQ_NBUCKETS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %43 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %42, i32 0, i32 10
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @TAILQ_INIT(i32* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %37

52:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %89, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @KQWQ_NBUCKETS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @KQWQ_QOS_MANAGER, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* @KQR_THOVERCOMMIT, align 4
  %63 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %64 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %63, i32 0, i32 9
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %62
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61, %57
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %75 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %74, i32 0, i32 9
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  %81 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %82 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %81, i32 0, i32 9
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = call i32 @TAILQ_INIT(i32* %87)
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %53

92:                                               ; preds = %53
  %93 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  store i32 %93, i32* %8, align 4
  %94 = load %struct.kqworkq*, %struct.kqworkq** %10, align 8
  %95 = bitcast %struct.kqworkq* %94 to i8*
  store i8* %95, i8** %9, align 8
  br label %176

96:                                               ; preds = %2
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %96
  %102 = load i32, i32* @kqworkloop_zone, align 4
  %103 = call i64 @zalloc(i32 %102)
  %104 = inttoptr i64 %103 to %struct.kqworkloop*
  store %struct.kqworkloop* %104, %struct.kqworkloop** %12, align 8
  %105 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %106 = icmp eq %struct.kqworkloop* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store %struct.kqueue* null, %struct.kqueue** %3, align 8
  br label %214

108:                                              ; preds = %101
  %109 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %110 = bitcast %struct.kqworkloop* %109 to %struct.kqworkq*
  %111 = call i32 @bzero(%struct.kqworkq* %110, i32 136)
  %112 = load i32, i32* @KQ_WORKLOOP, align 4
  %113 = load i32, i32* @KQ_DYNAMIC, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %116 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %118 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* @KQR_WORKLOOP, align 4
  %120 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %121 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %124 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %123, i32 0, i32 8
  store %struct.kqueue* %124, %struct.kqueue** %7, align 8
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %137, %108
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @KQWL_NBUCKETS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %131 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %130, i32 0, i32 7
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @TAILQ_INIT(i32* %135)
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %125

140:                                              ; preds = %125
  %141 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %142 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = call i32 @TAILQ_INIT(i32* %143)
  %145 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %146 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %145, i32 0, i32 5
  %147 = load i32, i32* @kq_lck_grp, align 4
  %148 = load i32, i32* @kq_lck_attr, align 4
  %149 = call i32 @lck_mtx_init(i32* %146, i32 %147, i32 %148)
  %150 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  store i32 %150, i32* %8, align 4
  %151 = load %struct.kqworkloop*, %struct.kqworkloop** %12, align 8
  %152 = bitcast %struct.kqworkloop* %151 to i8*
  store i8* %152, i8** %9, align 8
  br label %175

153:                                              ; preds = %96
  %154 = load i32, i32* @kqfile_zone, align 4
  %155 = call i64 @zalloc(i32 %154)
  %156 = inttoptr i64 %155 to %struct.kqfile*
  store %struct.kqfile* %156, %struct.kqfile** %14, align 8
  %157 = load %struct.kqfile*, %struct.kqfile** %14, align 8
  %158 = icmp eq %struct.kqfile* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store %struct.kqueue* null, %struct.kqueue** %3, align 8
  br label %214

160:                                              ; preds = %153
  %161 = load %struct.kqfile*, %struct.kqfile** %14, align 8
  %162 = getelementptr inbounds %struct.kqfile, %struct.kqfile* %161, i32 0, i32 4
  store %struct.kqueue* %162, %struct.kqueue** %7, align 8
  %163 = load %struct.kqfile*, %struct.kqfile** %14, align 8
  %164 = bitcast %struct.kqfile* %163 to %struct.kqworkq*
  %165 = call i32 @bzero(%struct.kqworkq* %164, i32 136)
  %166 = load %struct.kqfile*, %struct.kqfile** %14, align 8
  %167 = getelementptr inbounds %struct.kqfile, %struct.kqfile* %166, i32 0, i32 3
  %168 = call i32 @TAILQ_INIT(i32* %167)
  %169 = load %struct.kqfile*, %struct.kqfile** %14, align 8
  %170 = getelementptr inbounds %struct.kqfile, %struct.kqfile* %169, i32 0, i32 2
  %171 = call i32 @TAILQ_INIT(i32* %170)
  %172 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  %173 = load i32, i32* @SYNC_POLICY_PREPOST, align 4
  %174 = or i32 %172, %173
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %160, %140
  br label %176

176:                                              ; preds = %175, %92
  %177 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %178 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %177, i32 0, i32 3
  %179 = load i32, i32* %8, align 4
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @waitq_set_init(i32* %178, i32 %179, i32* null, i8* %180)
  %182 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %183 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %182, i32 0, i32 2
  %184 = load i32, i32* @kq_lck_grp, align 4
  %185 = load i32, i32* @kq_lck_attr, align 4
  %186 = call i32 @lck_spin_init(i32* %183, i32 %184, i32 %185)
  %187 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %188 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %187, i32 0, i32 1
  %189 = load i32, i32* @kq_lck_grp, align 4
  %190 = load i32, i32* @kq_lck_attr, align 4
  %191 = call i32 @lck_spin_init(i32* %188, i32 %189, i32 %190)
  %192 = load %struct.proc*, %struct.proc** %4, align 8
  %193 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %194 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %193, i32 0, i32 0
  store %struct.proc* %192, %struct.proc** %194, align 8
  %195 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %196 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %176
  %200 = load %struct.proc*, %struct.proc** %4, align 8
  %201 = call i32 @proc_fdlock(%struct.proc* %200)
  %202 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %203 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %208 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  br label %209

209:                                              ; preds = %206, %199
  %210 = load %struct.proc*, %struct.proc** %4, align 8
  %211 = call i32 @proc_fdunlock(%struct.proc* %210)
  br label %212

212:                                              ; preds = %209, %176
  %213 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  store %struct.kqueue* %213, %struct.kqueue** %3, align 8
  br label %214

214:                                              ; preds = %212, %159, %107, %28
  %215 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  ret %struct.kqueue* %215
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.kqworkq*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @waitq_set_init(i32*, i32, i32*, i8*) #1

declare dso_local i32 @lck_spin_init(i32*, i32, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
