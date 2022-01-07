; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_proc_listpidspath.c_check_process_fds.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_proc_listpidspath.c_check_process_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.proc_fdinfo* }
%struct.proc_fdinfo = type { i32, i32 }
%struct.vnode_fdinfo = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PROC_PIDLISTFDS = common dso_local global i32 0, align 4
@PROC_PIDFDVNODEINFO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PROC_LISTPIDSPATH_EXCLUDE_EVTONLY = common dso_local global i32 0, align 4
@O_EVTONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @check_process_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_process_fds(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_fdinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode_fdinfo, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PROC_PIDLISTFDS, align 4
  %14 = call i32 @proc_pidinfo(i32 %12, i32 %13, i32 0, %struct.proc_fdinfo* null, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %173

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %90
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %32, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 256
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %41, align 8
  %43 = icmp eq %struct.proc_fdinfo* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.proc_fdinfo* @malloc(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  store %struct.proc_fdinfo* %48, %struct.proc_fdinfo** %50, align 8
  br label %61

51:                                               ; preds = %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.proc_fdinfo* @reallocf(%struct.proc_fdinfo* %54, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store %struct.proc_fdinfo* %58, %struct.proc_fdinfo** %60, align 8
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %63, align 8
  %65 = icmp eq %struct.proc_fdinfo* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %173

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %19
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @PROC_PIDLISTFDS, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @proc_pidinfo(i32 %69, i32 %70, i32 0, %struct.proc_fdinfo* %73, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %173

81:                                               ; preds = %68
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %84, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  br label %19

97:                                               ; preds = %81
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %169, %104
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %172

111:                                              ; preds = %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.proc_fdinfo, %struct.proc_fdinfo* %114, i64 %116
  store %struct.proc_fdinfo* %117, %struct.proc_fdinfo** %9, align 8
  %118 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %9, align 8
  %119 = getelementptr inbounds %struct.proc_fdinfo, %struct.proc_fdinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %167 [
    i32 128, label %121
  ]

121:                                              ; preds = %111
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %9, align 8
  %124 = getelementptr inbounds %struct.proc_fdinfo, %struct.proc_fdinfo* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PROC_PIDFDVNODEINFO, align 4
  %127 = call i32 @proc_pidfdinfo(i32 %122, i32 %125, i32 %126, %struct.vnode_fdinfo* %11, i32 8)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load i32, i32* @errno, align 4
  %132 = load i32, i32* @ENOENT, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %169

135:                                              ; preds = %130
  store i32 -1, i32* %3, align 4
  br label %173

136:                                              ; preds = %121
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ult i64 %138, 8
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 -1, i32* %3, align 4
  br label %173

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PROC_LISTPIDSPATH_EXCLUDE_EVTONLY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.vnode_fdinfo, %struct.vnode_fdinfo* %11, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @O_EVTONLY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %169

157:                                              ; preds = %149, %142
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.vnode_fdinfo, %struct.vnode_fdinfo* %11, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = call i32 @check_file(%struct.TYPE_8__* %158, i32* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %173

166:                                              ; preds = %157
  br label %168

167:                                              ; preds = %111
  br label %168

168:                                              ; preds = %167, %166
  br label %169

169:                                              ; preds = %168, %156, %134
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %105

172:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %164, %140, %135, %80, %66, %17
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @proc_pidinfo(i32, i32, i32, %struct.proc_fdinfo*, i32) #1

declare dso_local %struct.proc_fdinfo* @malloc(i32) #1

declare dso_local %struct.proc_fdinfo* @reallocf(%struct.proc_fdinfo*, i32) #1

declare dso_local i32 @proc_pidfdinfo(i32, i32, i32, %struct.vnode_fdinfo*, i32) #1

declare dso_local i32 @check_file(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
