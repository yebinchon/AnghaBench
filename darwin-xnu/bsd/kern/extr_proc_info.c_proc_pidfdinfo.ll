; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidfdinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidfdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.kqueue* }
%struct.kqueue = type { i32 }
%struct.fileproc = type { i32 }
%struct.psemnode = type { i32 }
%struct.pshmnode = type { i32 }
%struct.pipe = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@PROC_PIDFDVNODEINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDVNODEPATHINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDSOCKETINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDPSEMINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDPSHMINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDPIPEINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDKQUEUEINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDKQUEUE_EXTINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFDATALKINFO_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.TYPE_23__* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@PROC_INFO_CALL_PIDFDINFO = common dso_local global i32 0, align 4
@CHECK_SAME_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidfdinfo(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fileproc*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.psemnode*, align 8
  %24 = alloca %struct.pshmnode*, align 8
  %25 = alloca %struct.pipe*, align 8
  %26 = alloca %struct.kqueue*, align 8
  %27 = alloca %struct.kqueue*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %28 = load i32, i32* @ENOTSUP, align 4
  store i32 %28, i32* %15, align 4
  store %struct.fileproc* null, %struct.fileproc** %16, align 8
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %52 [
    i32 129, label %30
    i32 128, label %32
    i32 130, label %34
    i32 132, label %36
    i32 131, label %38
    i32 133, label %40
    i32 135, label %42
    i32 134, label %44
    i32 136, label %50
  ]

30:                                               ; preds = %6
  %31 = load i64, i64* @PROC_PIDFDVNODEINFO_SIZE, align 8
  store i64 %31, i64* %17, align 8
  br label %54

32:                                               ; preds = %6
  %33 = load i64, i64* @PROC_PIDFDVNODEPATHINFO_SIZE, align 8
  store i64 %33, i64* %17, align 8
  br label %54

34:                                               ; preds = %6
  %35 = load i64, i64* @PROC_PIDFDSOCKETINFO_SIZE, align 8
  store i64 %35, i64* %17, align 8
  br label %54

36:                                               ; preds = %6
  %37 = load i64, i64* @PROC_PIDFDPSEMINFO_SIZE, align 8
  store i64 %37, i64* %17, align 8
  br label %54

38:                                               ; preds = %6
  %39 = load i64, i64* @PROC_PIDFDPSHMINFO_SIZE, align 8
  store i64 %39, i64* %17, align 8
  br label %54

40:                                               ; preds = %6
  %41 = load i64, i64* @PROC_PIDFDPIPEINFO_SIZE, align 8
  store i64 %41, i64* %17, align 8
  br label %54

42:                                               ; preds = %6
  %43 = load i64, i64* @PROC_PIDFDKQUEUEINFO_SIZE, align 8
  store i64 %43, i64* %17, align 8
  br label %54

44:                                               ; preds = %6
  %45 = load i64, i64* @PROC_PIDFDKQUEUE_EXTINFO_SIZE, align 8
  store i64 %45, i64* %17, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 0, i64* %17, align 8
  br label %49

49:                                               ; preds = %48, %44
  br label %54

50:                                               ; preds = %6
  %51 = load i64, i64* @PROC_PIDFDATALKINFO_SIZE, align 8
  store i64 %51, i64* %17, align 8
  br label %54

52:                                               ; preds = %6
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %7, align 4
  br label %239

54:                                               ; preds = %50, %49, %42, %40, %38, %36, %34, %32, %30
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %17, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %7, align 4
  br label %239

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.TYPE_23__* @proc_find(i32 %61)
  store %struct.TYPE_23__* %62, %struct.TYPE_23__** %14, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** @PROC_NULL, align 8
  %64 = icmp eq %struct.TYPE_23__* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @ESRCH, align 4
  store i32 %66, i32* %15, align 4
  br label %237

67:                                               ; preds = %60
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %69 = load i32, i32* @PROC_INFO_CALL_PIDFDINFO, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CHECK_SAME_USER, align 4
  %72 = call i32 @proc_security_policy(%struct.TYPE_23__* %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %234

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %223 [
    i32 129, label %77
    i32 128, label %93
    i32 130, label %109
    i32 132, label %124
    i32 131, label %139
    i32 133, label %154
    i32 135, label %169
    i32 134, label %197
  ]

77:                                               ; preds = %75
  store i64 0, i64* %19, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @fp_getfvpandvid(%struct.TYPE_23__* %78, i32 %79, %struct.fileproc** %16, i32* %18, i64* %19)
  store i32 %80, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %234

83:                                               ; preds = %77
  %84 = load i32, i32* %18, align 4
  %85 = load i64, i64* %19, align 8
  %86 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i64, i64* %12, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @pid_vnodeinfo(i32 %84, i64 %85, %struct.fileproc* %86, %struct.TYPE_23__* %87, i32 %88, i32 %89, i64 %90, i32* %91)
  store i32 %92, i32* %15, align 4
  br label %225

93:                                               ; preds = %75
  store i64 0, i64* %21, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @fp_getfvpandvid(%struct.TYPE_23__* %94, i32 %95, %struct.fileproc** %16, i32* %20, i64* %21)
  store i32 %96, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %234

99:                                               ; preds = %93
  %100 = load i32, i32* %20, align 4
  %101 = load i64, i64* %21, align 8
  %102 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i64, i64* %12, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @pid_vnodeinfopath(i32 %100, i64 %101, %struct.fileproc* %102, %struct.TYPE_23__* %103, i32 %104, i32 %105, i64 %106, i32* %107)
  store i32 %108, i32* %15, align 4
  br label %225

109:                                              ; preds = %75
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @fp_getfsock(%struct.TYPE_23__* %110, i32 %111, %struct.fileproc** %16, i32* %22)
  store i32 %112, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %234

115:                                              ; preds = %109
  %116 = load i32, i32* %22, align 4
  %117 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i64, i64* %12, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @pid_socketinfo(i32 %116, %struct.fileproc* %117, %struct.TYPE_23__* %118, i32 %119, i32 %120, i64 %121, i32* %122)
  store i32 %123, i32* %15, align 4
  br label %225

124:                                              ; preds = %75
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @fp_getfpsem(%struct.TYPE_23__* %125, i32 %126, %struct.fileproc** %16, %struct.psemnode** %23)
  store i32 %127, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %234

130:                                              ; preds = %124
  %131 = load %struct.psemnode*, %struct.psemnode** %23, align 8
  %132 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i64, i64* %12, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @pid_pseminfo(%struct.psemnode* %131, %struct.fileproc* %132, %struct.TYPE_23__* %133, i32 %134, i32 %135, i64 %136, i32* %137)
  store i32 %138, i32* %15, align 4
  br label %225

139:                                              ; preds = %75
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @fp_getfpshm(%struct.TYPE_23__* %140, i32 %141, %struct.fileproc** %16, %struct.pshmnode** %24)
  store i32 %142, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %234

145:                                              ; preds = %139
  %146 = load %struct.pshmnode*, %struct.pshmnode** %24, align 8
  %147 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i64, i64* %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @pid_pshminfo(%struct.pshmnode* %146, %struct.fileproc* %147, %struct.TYPE_23__* %148, i32 %149, i32 %150, i64 %151, i32* %152)
  store i32 %153, i32* %15, align 4
  br label %225

154:                                              ; preds = %75
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @fp_getfpipe(%struct.TYPE_23__* %155, i32 %156, %struct.fileproc** %16, %struct.pipe** %25)
  store i32 %157, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %234

160:                                              ; preds = %154
  %161 = load %struct.pipe*, %struct.pipe** %25, align 8
  %162 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i64, i64* %12, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @pid_pipeinfo(%struct.pipe* %161, %struct.fileproc* %162, %struct.TYPE_23__* %163, i32 %164, i32 %165, i64 %166, i32* %167)
  store i32 %168, i32* %15, align 4
  br label %225

169:                                              ; preds = %75
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load %struct.kqueue*, %struct.kqueue** %176, align 8
  store %struct.kqueue* %177, %struct.kqueue** %26, align 8
  %178 = icmp eq %struct.kqueue* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  store i32 0, i32* %15, align 4
  br label %225

180:                                              ; preds = %172
  br label %188

181:                                              ; preds = %169
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @fp_getfkq(%struct.TYPE_23__* %182, i32 %183, %struct.fileproc** %16, %struct.kqueue** %26)
  store i32 %184, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %234

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %180
  %189 = load %struct.kqueue*, %struct.kqueue** %26, align 8
  %190 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i64, i64* %12, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @pid_kqueueinfo(%struct.kqueue* %189, %struct.fileproc* %190, %struct.TYPE_23__* %191, i32 %192, i32 %193, i64 %194, i32* %195)
  store i32 %196, i32* %15, align 4
  br label %225

197:                                              ; preds = %75
  %198 = load i32, i32* %10, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load %struct.kqueue*, %struct.kqueue** %204, align 8
  store %struct.kqueue* %205, %struct.kqueue** %27, align 8
  %206 = icmp eq %struct.kqueue* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 0, i32* %15, align 4
  br label %225

208:                                              ; preds = %200
  br label %216

209:                                              ; preds = %197
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @fp_getfkq(%struct.TYPE_23__* %210, i32 %211, %struct.fileproc** %16, %struct.kqueue** %27)
  store i32 %212, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %234

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %215, %208
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %218 = load %struct.kqueue*, %struct.kqueue** %27, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load i64, i64* %12, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = call i32 @pid_kqueue_extinfo(%struct.TYPE_23__* %217, %struct.kqueue* %218, i32 %219, i64 %220, i32* %221)
  store i32 %222, i32* %15, align 4
  br label %225

223:                                              ; preds = %75
  %224 = load i32, i32* @EINVAL, align 4
  store i32 %224, i32* %15, align 4
  br label %234

225:                                              ; preds = %216, %207, %188, %179, %160, %145, %130, %115, %99, %83
  %226 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %227 = icmp ne %struct.fileproc* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %232 = call i32 @fp_drop(%struct.TYPE_23__* %229, i32 %230, %struct.fileproc* %231, i32 0)
  br label %233

233:                                              ; preds = %228, %225
  br label %234

234:                                              ; preds = %233, %223, %214, %186, %159, %144, %129, %114, %98, %82, %74
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %236 = call i32 @proc_rele(%struct.TYPE_23__* %235)
  br label %237

237:                                              ; preds = %234, %65
  %238 = load i32, i32* %15, align 4
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %237, %58, %52
  %240 = load i32, i32* %7, align 4
  ret i32 %240
}

declare dso_local %struct.TYPE_23__* @proc_find(i32) #1

declare dso_local i32 @proc_security_policy(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @fp_getfvpandvid(%struct.TYPE_23__*, i32, %struct.fileproc**, i32*, i64*) #1

declare dso_local i32 @pid_vnodeinfo(i32, i64, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @pid_vnodeinfopath(i32, i64, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @fp_getfsock(%struct.TYPE_23__*, i32, %struct.fileproc**, i32*) #1

declare dso_local i32 @pid_socketinfo(i32, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @fp_getfpsem(%struct.TYPE_23__*, i32, %struct.fileproc**, %struct.psemnode**) #1

declare dso_local i32 @pid_pseminfo(%struct.psemnode*, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @fp_getfpshm(%struct.TYPE_23__*, i32, %struct.fileproc**, %struct.pshmnode**) #1

declare dso_local i32 @pid_pshminfo(%struct.pshmnode*, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @fp_getfpipe(%struct.TYPE_23__*, i32, %struct.fileproc**, %struct.pipe**) #1

declare dso_local i32 @pid_pipeinfo(%struct.pipe*, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @fp_getfkq(%struct.TYPE_23__*, i32, %struct.fileproc**, %struct.kqueue**) #1

declare dso_local i32 @pid_kqueueinfo(%struct.kqueue*, %struct.fileproc*, %struct.TYPE_23__*, i32, i32, i64, i32*) #1

declare dso_local i32 @pid_kqueue_extinfo(%struct.TYPE_23__*, %struct.kqueue*, i32, i64, i32*) #1

declare dso_local i32 @fp_drop(%struct.TYPE_23__*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_rele(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
